namespace ManABank
{
    partial class LoginForm
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
            this.login_prompt = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // login_prompt
            // 
            this.login_prompt.AutoSize = true;
            this.login_prompt.Location = new System.Drawing.Point(148, 67);
            this.login_prompt.Name = "login_prompt";
            this.login_prompt.Size = new System.Drawing.Size(101, 13);
            this.login_prompt.TabIndex = 0;
            this.login_prompt.Text = "Log into ManABank";
            this.login_prompt.Click += new System.EventHandler(this.label1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.login_prompt);
            this.Name = "Form1";
            this.Text = "ManABank";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label login_prompt;
    }
}

