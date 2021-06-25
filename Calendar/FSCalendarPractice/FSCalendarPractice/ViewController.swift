//
//  ViewController.swift
//  FSCalendarPractice
//
//  Created by kyoungjin on 2021/06/24.
//

import UIKit
import FSCalendar

class ViewController: UIViewController{

    @IBOutlet weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //평일날짜 색깔
        calendar.appearance.titleDefaultColor = .systemIndigo
        //주말 날짜 색깔
        calendar.appearance.titleWeekendColor = .systemPurple
        
        //달력 위에 년도, 월 색깔
        calendar.appearance.headerTitleColor = .purple
        //요일 색깔
        calendar.appearance.weekdayTextColor = .purple
        
        //달력 한국어 버전으로 바꿔보기
        //년월 글짜 바꾸기
        calendar.appearance.headerDateFormat = "YYYY년 M월"
        calendar.appearance.eventSelectionColor = .blue
        calendar.appearance.todayColor = .purple

        
        
        //요일 글자 바꾸는 방법 1
        //calendar.locale = Locale(identifier: "ko_KR")
        
        //요일 글자 바꾸는 방법 2
        calendar.calendarWeekdayView.weekdayLabels[0].text = "일욜"
        calendar.calendarWeekdayView.weekdayLabels[1].text = "월욜"
        calendar.calendarWeekdayView.weekdayLabels[2].text = "화욜"
        calendar.calendarWeekdayView.weekdayLabels[3].text = "수욜"
        calendar.calendarWeekdayView.weekdayLabels[4].text = "목욜"
        calendar.calendarWeekdayView.weekdayLabels[5].text = "!!불금!!"
        calendar.calendarWeekdayView.weekdayLabels[5].backgroundColor = .purple
        calendar.calendarWeekdayView.weekdayLabels[5].textColor = .white
        
        calendar.appearance.borderDefaultColor = .blue


        calendar.calendarWeekdayView.weekdayLabels[6].text = "토욜"


        calendar.delegate = self



    }


}

extension ViewController: FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        guard let modalPresentView = self.storyboard?.instantiateViewController(identifier: "EventViewController") as? EventViewController else {return}
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 MM월 dd일의 일정^_^"
        
        modalPresentView.date = dateFormatter.string(from: date)
        
        self.present(modalPresentView, animated:true, completion: nil)
    }
}
