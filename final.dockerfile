FROM app-system as final

COPY --from=app-build /app .

CMD ["python", "main.py"]
