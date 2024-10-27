<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salary Calculator</title>
</head>
<body>
    <h1>Salary Calculator</h1>
    <form method="POST">
        <label>Hours Worked per Day:</label><br>
        <input type="number" name="hours_per_day" required><br>
        
        <label>Days Worked in Month (1 to 31):</label><br>
        <input type="number" name="days_in_month" min="1" max="31" required><br>
        
        <label>Overtime Hours Worked:</label><br>
        <input type="number" name="overtime_hours" required><br>
        
        <label>Regular Hourly Rate:</label><br>
        <input type="number" name="regular_rate" step="any" required><br>

        
        <label>Overtime Rate (multiplied by the regular rate):</label><br>
        <input type="number" name="overtime_rate"  step="any" required><br>
        
        <label>Monthly Bonus:</label><br>
        <input type="number" name="monthly_bonus" required><br>
        
        <label>Annual Bonus:</label><br>
        <input type="number" name="annual_bonus" required><br>
        
        <label>Working Days in Year (up to 365):</label><br>
        <input type="number" name="working_days_in_year" required><br>
        
        <label>Income Tax Rate (in %):</label><br>
        <input type="number" name="tax_rate" required><br><br>

        <input type="submit" value="Calculate">
    </form>

    {% if total_salary_before_tax is not none %}
        <h2>Results:</h2>
        <p>Total Monthly Salary (before tax): ${{ total_salary_before_tax | round(2) }}</p>
        <p>Tax Deduction: ${{ tax_deduction | round(2) }}</p>
        <p>Net Monthly Salary (after tax): ${{ net_salary | round(2) }}</p>
    {% endif %}
</body>
</html>