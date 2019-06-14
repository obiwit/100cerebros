namespace ManABank
{
    partial class EmployeeForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ccIDtxt = new System.Windows.Forms.TextBox();
            this.employeeNumTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.emailTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.nameTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.salaryTxt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.dobTxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.healthCareTxt = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.officeTxt = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.supervisorTxt = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.branchIDtxt = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.addButton = new System.Windows.Forms.Button();
            this.editButton = new System.Windows.Forms.Button();
            this.deleteButton = new System.Windows.Forms.Button();
            this.okButton = new System.Windows.Forms.Button();
            this.cancelButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            this.lockControls();
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(12, 22);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(391, 404);
            this.listBox1.TabIndex = 0;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);

            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(642, 51);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "CC ID";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // ccIDtxt
            // 
            this.ccIDtxt.Location = new System.Drawing.Point(645, 71);
            this.ccIDtxt.Name = "ccIDtxt";
            this.ccIDtxt.Size = new System.Drawing.Size(100, 22);
            this.ccIDtxt.TabIndex = 2;
            this.ccIDtxt.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // employeeNumTxt
            // 
            this.employeeNumTxt.Location = new System.Drawing.Point(464, 71);
            this.employeeNumTxt.Name = "employeeNumTxt";
            this.employeeNumTxt.Size = new System.Drawing.Size(100, 22);
            this.employeeNumTxt.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(461, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(124, 17);
            this.label2.TabIndex = 3;
            this.label2.Text = "Employee Number";
            // 
            // emailTxt
            // 
            this.emailTxt.Location = new System.Drawing.Point(464, 300);
            this.emailTxt.Name = "emailTxt";
            this.emailTxt.Size = new System.Drawing.Size(301, 22);
            this.emailTxt.TabIndex = 6;
            this.emailTxt.TextChanged += new System.EventHandler(this.textBox3_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(461, 280);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(42, 17);
            this.label3.TabIndex = 5;
            this.label3.Text = "Email";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // nameTxt
            // 
            this.nameTxt.Location = new System.Drawing.Point(464, 126);
            this.nameTxt.Name = "nameTxt";
            this.nameTxt.Size = new System.Drawing.Size(301, 22);
            this.nameTxt.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(461, 106);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 17);
            this.label4.TabIndex = 7;
            this.label4.Text = "Name";
            // 
            // salaryTxt
            // 
            this.salaryTxt.Location = new System.Drawing.Point(464, 188);
            this.salaryTxt.Name = "salaryTxt";
            this.salaryTxt.Size = new System.Drawing.Size(89, 22);
            this.salaryTxt.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(461, 168);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(48, 17);
            this.label5.TabIndex = 9;
            this.label5.Text = "Salary";
            // 
            // dobTxt
            // 
            this.dobTxt.Location = new System.Drawing.Point(559, 188);
            this.dobTxt.Name = "dobTxt";
            this.dobTxt.Size = new System.Drawing.Size(100, 22);
            this.dobTxt.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(556, 168);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(87, 17);
            this.label6.TabIndex = 11;
            this.label6.Text = "Date of Birth";
            // 
            // healthCareTxt
            // 
            this.healthCareTxt.Location = new System.Drawing.Point(665, 188);
            this.healthCareTxt.Name = "healthCareTxt";
            this.healthCareTxt.Size = new System.Drawing.Size(100, 22);
            this.healthCareTxt.TabIndex = 14;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(662, 168);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(83, 17);
            this.label7.TabIndex = 13;
            this.label7.Text = "Health Care";
            // 
            // officeTxt
            // 
            this.officeTxt.Location = new System.Drawing.Point(464, 243);
            this.officeTxt.Name = "officeTxt";
            this.officeTxt.Size = new System.Drawing.Size(89, 22);
            this.officeTxt.TabIndex = 16;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(461, 223);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(45, 17);
            this.label8.TabIndex = 15;
            this.label8.Text = "Office";
            // 
            // supervisorTxt
            // 
            this.supervisorTxt.Location = new System.Drawing.Point(559, 243);
            this.supervisorTxt.Name = "supervisorTxt";
            this.supervisorTxt.Size = new System.Drawing.Size(100, 22);
            this.supervisorTxt.TabIndex = 18;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(556, 223);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(76, 17);
            this.label9.TabIndex = 17;
            this.label9.Text = "Supervisor";
            // 
            // branchIDtxt
            // 
            this.branchIDtxt.Location = new System.Drawing.Point(665, 243);
            this.branchIDtxt.Name = "branchIDtxt";
            this.branchIDtxt.Size = new System.Drawing.Size(100, 22);
            this.branchIDtxt.TabIndex = 22;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(662, 223);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(70, 17);
            this.label11.TabIndex = 21;
            this.label11.Text = "Branch ID";
            // 
            // addButton
            // 
            this.addButton.Location = new System.Drawing.Point(473, 360);
            this.addButton.Name = "addButton";
            this.addButton.Size = new System.Drawing.Size(86, 32);
            this.addButton.TabIndex = 23;
            this.addButton.Text = "Add";
            this.addButton.Click += new System.EventHandler(this.addButton_Click);
            this.addButton.UseVisualStyleBackColor = true;
            // 
            // editButton
            // 
            this.editButton.Location = new System.Drawing.Point(565, 360);
            this.editButton.Name = "editButton";
            this.editButton.Size = new System.Drawing.Size(89, 32);
            this.editButton.TabIndex = 23;
            this.editButton.Text = "Edit";
            this.editButton.Click += new System.EventHandler(this.editButton_Click);
            this.editButton.UseVisualStyleBackColor = true;
            // 
            // deleteButton
            // 
            this.deleteButton.Location = new System.Drawing.Point(665, 360);
            this.deleteButton.Name = "deleteButton";
            this.deleteButton.Size = new System.Drawing.Size(86, 32);
            this.deleteButton.TabIndex = 23;
            this.deleteButton.Text = "Delete";
            this.deleteButton.Click += new System.EventHandler(this.deleteButton_Click);
            this.deleteButton.UseVisualStyleBackColor = true;
            // 
            // okButton
            // 
            this.okButton.Location = new System.Drawing.Point(521, 360);
            this.okButton.Name = "okButton";
            this.okButton.Size = new System.Drawing.Size(75, 32);
            this.okButton.TabIndex = 24;
            this.okButton.Text = "Ok";
            this.okButton.Visible = false;
            this.okButton.Click += new System.EventHandler(this.btnOK_Click);
            this.okButton.UseVisualStyleBackColor = true;
            // 
            // cancelButton
            // 
            this.cancelButton.Location = new System.Drawing.Point(615, 360);
            this.cancelButton.Name = "cancelButton";
            this.cancelButton.Size = new System.Drawing.Size(81, 32);
            this.cancelButton.TabIndex = 25;
            this.cancelButton.Text = "Cancel";
            this.cancelButton.Visible = false;
            this.cancelButton.Click += new System.EventHandler(this.btnCancel_Click);
            this.cancelButton.UseVisualStyleBackColor = true;
            // 
            // EmployeeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cancelButton);
            this.Controls.Add(this.okButton);
            this.Controls.Add(this.deleteButton);
            this.Controls.Add(this.editButton);
            this.Controls.Add(this.addButton);
            this.Controls.Add(this.branchIDtxt);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.supervisorTxt);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.officeTxt);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.healthCareTxt);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.dobTxt);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.salaryTxt);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.nameTxt);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.emailTxt);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.employeeNumTxt);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ccIDtxt);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.listBox1);
            this.Name = "EmployeeForm";
            this.Text = "ManABank - Employee";
            this.Load += new System.EventHandler(this.EmployeeForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox ccIDtxt;
        private System.Windows.Forms.TextBox employeeNumTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox emailTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox nameTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox salaryTxt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox dobTxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox healthCareTxt;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox officeTxt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox supervisorTxt;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox branchIDtxt;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button addButton;
        private System.Windows.Forms.Button editButton;
        private System.Windows.Forms.Button deleteButton;
        private System.Windows.Forms.Button okButton;
        private System.Windows.Forms.Button cancelButton;
    }
}