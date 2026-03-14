-- Create Invoice Table
CREATE TABLE invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_no INT UNIQUE,
    estimated_id INT,
    chain_id INT,
    service_details VARCHAR(50),
    qty INT,
    cost_per_qty FLOAT,
    amount_payable FLOAT,
    balance FLOAT,
    date_of_payment DATETIME,
    date_of_service DATE,
    delivery_details VARCHAR(100),
    email_id VARCHAR(50),

    -- Foreign Key Constraints
    FOREIGN KEY (estimated_id) REFERENCES estimate(estimated_id),
    FOREIGN KEY (chain_id) REFERENCES chain(chain_id)
);

-- Insert Sample Data
INSERT INTO invoice 
(invoice_no, estimated_id, chain_id, service_details, qty, cost_per_qty, amount_payable, balance, date_of_payment, date_of_service, delivery_details, email_id)
VALUES
(1001, 1, 1, 'Website Development', 2, 5000, 10000, 0, '2026-03-10 10:30:00', '2026-03-15', 'Pune Office Delivery', 'client1@gmail.com'),

(1002, 2, 1, 'SEO Optimization', 3, 2000, 6000, 1000, '2026-03-12 12:00:00', '2026-03-18', 'Mumbai Office Delivery', 'client2@gmail.com');

-- View All Invoices
SELECT * FROM invoice;

-- Update Email ID
UPDATE invoice
SET email_id = 'updatedclient@gmail.com'
WHERE invoice_no = 1001;

-- Delete Invoice
DELETE FROM invoice
WHERE invoice_no = 1002;