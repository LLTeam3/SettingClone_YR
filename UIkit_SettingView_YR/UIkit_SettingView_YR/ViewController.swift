//
//  ViewController.swift
//  UIkit_SettingView_YR
//
//  Created by 윤예린 on 2022/12/19.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let cellitems = [
        ["정보", "소프트웨어 업데이트"],
        ["AirDrop", "AirPlay 및 Handoff", "화면 속 화면"],
        ["iPad 저장 공간", "백그라운드 앱 새로 고침"],
        ["날짜 및 시간", "키보드", "제스처", "서체", "언어 및 지역", "사전"],
        ["VPN 및 기기 관리"],
        ["법률 및 규제 정보"],
        ["전송 또는 iPad 재설정", "시스템 종료"]
    ]
    
    let header = ["Section 1", "Section 2", "Section 3", "Section 4", "Section 5", "Section 6", "Section 7"]
    
    //tableView
    lazy var tableView = UITableView(frame: .zero, style: .insetGrouped)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
//        self.view.addSubview(label)
        self.tableView.dataSource = self
        
        //label(barTitle)
//        let label: UILabel = UILabel()
//        label.text = "일반"
        
        self.tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return header.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellitems[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cellitems[indexPath.section][indexPath.row]
        
        return cell
    }
    
}



