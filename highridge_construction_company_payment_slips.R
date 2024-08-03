# Load necessary library to use exception handling
library(tryCatchLog)

# Generate a list of 400 workers dynamically
workers <- list()
for (i in 1:400) {
  salary <- sample(5000:30000, 1) # The Sample function takes a random sample of elements
  gender <- sample(c("Male", "Female"), 1)
  workers[[i]] <- list(id = i, salary = salary, gender = gender)
}

# Generate payment slips for each worker and include exception handling
for (worker in workers) {
  tryCatch({
    employee_id <- worker$id
    salary <- worker$salary
    gender <- worker$gender
    employee_level <- ""
    
    # Conditional statements to assign employee levels
    if (salary > 10000 && salary < 20000) {
      employee_level <- "A1"
    }
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      employee_level <- "A5-F"
    }
    
    # Generate and print the payment slip
    payment_slip <- paste0("Payment Slip for Employee ID: ", employee_id, "\n",
                           "Salary: $", salary, "\n",
                           "Gender: ", gender, "\n",
                           "Employee Level: ", employee_level, "\n",
                           strrep("-", 30))
    print(payment_slip)
  }, error = function(e) {
    message(paste("An error occurred while processing employee ID:", worker$id, ". Error:", e$message))
  })
}