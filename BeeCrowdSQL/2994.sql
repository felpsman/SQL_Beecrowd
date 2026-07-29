SELECT doctors.name,
       ROUND(SUM(attendances.hours * 150 * (1 + work_shifts.bonus / 100.0)), 1) AS salary
FROM doctors
JOIN attendances
    ON doctors.id = attendances.id_doctor
JOIN work_shifts
    ON attendances.id_work_shift = work_shifts.id
GROUP BY doctors.id, doctors.name
ORDER BY salary DESC;
---Round=Arrendondar o numero para um numero especifico de casas decimais