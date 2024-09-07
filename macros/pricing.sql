{% macro discounted_amount(extendedprice, discount_percentage, scale=2) %}
    (-1 * {{ extendedprice }} * {{discount_percentage}})::numeric(16, {{ scale }})
{% endmacro %}
