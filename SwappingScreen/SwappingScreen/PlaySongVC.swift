import UIKit

class PlaySongVC: UIViewController {
    @IBOutlet var songTitleLbl: UILabel!

    /// Set by MusicListVC before the segue runs.
    var selectedSong: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = selectedSong
    }
}
