import os

def main():
    print("Hello, World!")
    print(f"Environment Variable: {os.getenv('MY_ENV_VAR')}")

if __name__ == "__main__":
    main()
