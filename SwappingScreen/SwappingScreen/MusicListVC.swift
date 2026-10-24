import UIKit

class MusicListVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        performSegue(withIdentifier: "SongVC", sender: "Jai Ho")
    }

    // Pass the chosen song to the next screen.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC, let song = sender as? String {
            destination.selectedSong = song
        }
    }
}
