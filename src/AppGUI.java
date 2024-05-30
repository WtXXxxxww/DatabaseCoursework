import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class AppGUI extends JFrame {
    private JButton button;
    private JTextArea textArea;
    private JTextField inputDbPathField;
    private JTextField outputDbPathField;
    private JTextField dbNameField;
    private JLabel inputDbPathLabel;
    private JLabel outputDbPathLabel;
    private JLabel dbNameLabel;

    public AppGUI() {
        // Set the frame properties
        setTitle("My Application");
        setSize(500, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create the button
        button = new JButton("Run");
        button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Get the input and output database paths and the database name
                String inputDbPath = inputDbPathField.getText();
                // String outputDbPath = outputDbPathField.getText();
                String databaseName = dbNameField.getText();

                new Main().go(inputDbPath, databaseName);
            }
        });

        // Create the text area
        textArea = new JTextArea();

        // Create the text fields
        inputDbPathField = new JTextField();
        //outputDbPathField = new JTextField();
        dbNameField = new JTextField();

        // Create the labels
        inputDbPathLabel = new JLabel("InputDatabase");
        //outputDbPathLabel = new JLabel("OutputAddress");
        dbNameLabel = new JLabel("DatabaseName");

        // Add the button, text area, text fields and labels to the frame
        setLayout(new BorderLayout());
        add(button, BorderLayout.SOUTH);
        add(new JScrollPane(textArea), BorderLayout.CENTER);
        JPanel northPanel = new JPanel(new GridLayout(3, 2));
        northPanel.add(inputDbPathLabel);
        northPanel.add(inputDbPathField);
        //northPanel.add(outputDbPathLabel);
        //northPanel.add(outputDbPathField);
        northPanel.add(dbNameLabel);
        northPanel.add(dbNameField);
        add(northPanel, BorderLayout.NORTH);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new AppGUI().setVisible(true);
            }
        });
    }
}