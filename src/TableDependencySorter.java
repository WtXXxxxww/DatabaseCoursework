import java.util.*;

/**
 * This class sorts tables based on their dependencies.
 */
public class TableDependencySorter {
    private final Map<String, List<String>> adjacencyList = new HashMap<>();

    /**
     * Add a dependency between two tables.
     * @param table
     * @param dependsOn
     */
    public void addDependency(String table, String dependsOn) {
        adjacencyList.putIfAbsent(table, new ArrayList<>());
        adjacencyList.putIfAbsent(dependsOn, new ArrayList<>());
        adjacencyList.get(table).add(dependsOn);
    }

    /**
     * Sort tables based on their dependencies.
     * @return a list of table names sorted based on their dependencies.
     */
    public List<String> sortTables() {
        Set<String> visited = new HashSet<>();
        Set<String> result = new LinkedHashSet<>();
        for (String table : adjacencyList.keySet()) {
            if (!visited.contains(table)) {
                visit(table, visited, result);
            }
        }
        return new ArrayList<>(result);
    }

    /**
     * Visit a table and its dependencies.
     * @param table
     * @param visited
     * @param result
     */
    private void visit(String table, Set<String> visited, Set<String> result) {
        if (!visited.contains(table)) {
            visited.add(table);
            for (String dependsOn : adjacencyList.get(table)) {
                visit(dependsOn, visited, result);
            }
            result.add(table);
        }
    }
}