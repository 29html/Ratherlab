import psycopg2

from helpers.report_helper import (
    calculate_average_monthly_price,
    calculate_seven_day_moving_average_price,
    identify_trends,
)


def run(report_type: int) -> None:
    """
    Executes a specific report based on the provided report type.

    Parameters:
    report_type (int): An integer representing the type of report to be generated.
                       1 - Average Monthly Price
                       2 - Seven Day Moving Average Price
                       3 - Identify Trends

    Returns:
    None: This function does not return any value. It prints the results of the
          selected report to the console or prints an error message if an invalid
          report type is provided.

    Raises:
    psycopg2.Error: If an error occurs during database operations.
    """
    try:
        report_functions = {
            1: calculate_average_monthly_price,
            2: calculate_seven_day_moving_average_price,
            3: identify_trends,
        }

        report_function = report_functions.get(report_type)
        if report_function:
            report_function()
        else:
            print("invalid report type")
    except psycopg2.Error as e:
        print("Something went wrong running script executor module: ", e)


"""
execute report:
    1 for average monthly price,
    2 for seven-day moving average price,
    3 for identifying trends.
"""
run(report_type=2)
