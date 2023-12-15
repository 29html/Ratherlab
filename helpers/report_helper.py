import psycopg2
from psycopg2 import OperationalError

POSTGRES_DB_NAME = "tsdb"
POSTGRES_DB_USER = "tsdbadmin"
POSTGRES_DB_PASSWORD = "jesxcos8zy0t0g86"
POSTGREST_DB_HOST = "tvpcjzzfih.uc3vjgbnrc.tsdb.cloud.timescale.com"
POSTGRES_DB_HOST = "32937"


def execute_query(connection, stmt) -> list:
    """
    Execute a SQL query using an established database connection.

    Args:
    connection: A connection object to the PostgreSQL database
    stmt (str): SQL query to be executed

    Returns:
    list: A list of tuples containing the rows returned by the query
    """
    if connection is not None:
        with connection:
            with connection.cursor() as cursor:
                cursor.execute(stmt)
                return cursor.fetchall()
    else:
        print("The database connection is not established.")
        return []


def get_connection() -> object:
    """
    Establish a connection to a PostgreSQL database.

    Returns:
    connection: A connection object to the PostgreSQL database
    """
    try:
        connection = psycopg2.connect(
            dbname=POSTGRES_DB_NAME,
            user=POSTGRES_DB_USER,
            password=POSTGRES_DB_PASSWORD,
            host=POSTGREST_DB_HOST,
            port=POSTGRES_DB_HOST,
        )
        return connection
    except OperationalError as e:
        print(f"An error occurred while connecting to the database: {e}")
        return None


def calculate_average_monthly_price() -> None:
    """
    Calculates and prints the average monthly price for each month in the 'financial_data' table.

    This function uses the Time_bucket function of TimescaleDB to group the financial data
    by month. It then calculates the average price for each of these monthly buckets. The
    data is aggregated by the month of the 'timestamp' field and then ordered chronologically.

    The resulting average prices provide a monthly overview of the price trends in the
    financial data, which can be useful for monthly financial analysis or reporting.
    """
    stmt = f"""
        SELECT Time_bucket('1 month', timestamp) AS one_month,
               Avg(price)
        FROM   financial_data
        GROUP  BY one_month
        ORDER  BY one_month; 
    """
    conn = get_connection()
    result = execute_query(
        connection=conn,
        stmt=stmt,
    )
    for row in result:
        print(row)


def calculate_seven_day_moving_average_price() -> None:
    """
    Calculates and prints the seven-day moving average of the price for each record
    in the 'financial_data' table.

    This function retrieves each timestamp and price from the 'financial_data' table and
    computes the seven-day moving average of the price up to the current row. The moving
    average is calculated using a window frame that extends seven days preceding the current
    row.
    """
    stmt = f"""
        SELECT   timestamp,
                 price,
                 avg(price) OVER (ORDER BY timestamp range BETWEEN interval '7 days' PRECEDING AND  CURRENT row)
        FROM     financial_data;
    """
    conn = get_connection()
    result = execute_query(
        connection=conn,
        stmt=stmt,
    )
    for row in result:
        print(row)


def identify_trends() -> None:
    """
    Identifies and prints price trends for each record in the 'financial_data' table.

    This function retrieves the timestamp and price for each entry in the 'financial_data'
    table and compares it with the price of the previous record. It uses the SQL LAG function
    to obtain the previous price for each row, ordered by timestamp.

    The function is designed to help identify trends by comparing the current price with the
    previous price. A rising trend is indicated when the current price is higher than the
    previous price, and a falling trend is indicated when it is lower.
    """
    stmt = f"""
        SELECT   timestamp,
                 price,
                 Lag(price, 1) OVER (ORDER BY timestamp) AS previous_price
        FROM     financial_data;
    """
    conn = get_connection()
    result = execute_query(
        connection=conn,
        stmt=stmt,
    )
    for row in result:
        print(row)
