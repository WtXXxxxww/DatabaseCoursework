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
    private JLabel imageLabel;

    public AppGUI() {
        // Set the frame properties
        setTitle("DATABASE COURSEWORK");
        setSize(500, 300);
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
        dbNameField = new JTextField();

        // Create the labels
        inputDbPathLabel = new JLabel("InputDatabase");
        dbNameLabel = new JLabel("DatabaseName");

        // Add the button, text area, text fields and labels to the frame
        setLayout(new BorderLayout());
        add(button, BorderLayout.SOUTH);
        add(new JScrollPane(textArea), BorderLayout.CENTER);
        JPanel northPanel = new JPanel(new GridLayout(2, 2));
        northPanel.add(inputDbPathLabel);
        northPanel.add(inputDbPathField);
        northPanel.add(dbNameLabel);
        northPanel.add(dbNameField);
        add(northPanel, BorderLayout.NORTH);

        // Create the image icon and label
        ImageIcon imageIcon = new ImageIcon("src/Background.png");
        imageLabel = new JLabel(imageIcon);

        // Add the image label to the frame
        add(imageLabel, BorderLayout.CENTER);
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