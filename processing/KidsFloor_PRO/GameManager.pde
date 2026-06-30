class GameManager {

  ArrayList<InteractiveGame> games;

  int currentGame = 0;

static final int TIC_TAC_TOE = 5;
static final int AQUARIUM = 6;
static final int FOREST = 7;

  GameManager() {

    games = new ArrayList<InteractiveGame>();

    // Ordem igual ao Menu
    games.add(new WaterGame());        // 0
    games.add(new FireGame());         // 1
    games.add(new WaterFireGame());    // 2
    games.add(new StarsGame());        // 3
    games.add(new GalaxyGame());       // 4
    games.add(new TicTacToeGame());    // 5
    games.add(new AquariumGame());     // 6
    games.add(new ForestGame());       // 7

  }

  void setGame(int index) {

    if (index >= 0 && index < games.size()) {

      currentGame = index;

    }

  }

  InteractiveGame getCurrentGame() {

    return games.get(currentGame);

  }

  void update() {

    getCurrentGame().update();

  }

  void render() {

    getCurrentGame().render();

  }

}
