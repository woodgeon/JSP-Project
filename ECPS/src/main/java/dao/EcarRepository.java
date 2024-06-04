package dao;

import java.util.ArrayList;
import dto.Ecar;

public class EcarRepository{
	
	private ArrayList<Ecar> listOfEcars = new ArrayList<Ecar>();
	private static EcarRepository instance = new EcarRepository();
	
	public static EcarRepository getInstance() {
		return instance;
	}
	public EcarRepository() {
	
		Ecar ecar1= new Ecar("경형 해치백","르노 트위지", 14000000);
		ecar1.setCarName("트위지");
		ecar1.setDescription("프랑스 자동차 제조사 르노에서 제작한 초소형 전기 자동차입니다. 2012년에 출시되어 도심 내 짧은 거리 이동이나 통근용으로 인기를 끌고 있습니다. "
				+ "트위지의 가장 큰 특징은 그 크기와 디자인에 있습니다. 매우 작은 크기로, 협소한 도심 공간에서의 주차와 운행이 용이하며, 두 사람이 탈 수 있는 1+1 좌석 구조를 가지고 있습니다.");
		ecar1.setCompany("르노자동차");
		ecar1.setUnitsInStock(1000);		
		ecar1.setReleaseDate("2019/10/06");
		ecar1.setFileName("model_360.png");
		
		
		Ecar ecar2 = new Ecar("경형 RV","기아 레이 EV", 29550000);
		ecar2.setCarName("레이");
		ecar2.setDescription("기아자동차에서 제조한 전기차량으로, 레이 모델의 전기 버전입니다. 레이 EV는 주로 도심 환경을 겨냥하여 설계된 소형 차량으로, "
				+ "한 번 충전으로 약 140km에서 180km(모델 및 주행 조건에 따라 다름) 정도를 주행할 수 있습니다. 이 차량은 2011년부터 생산되기 시작하여, 전기차 시장에서 도심형 이동 수단으로 자리 잡았습니다.");
		ecar2.setCompany("기아자동차");
		ecar2.setUnitsInStock(1000);		
		ecar2.setReleaseDate("2024/01/03");
		ecar2.setFileName("model_460.png");
		
		Ecar ecar3= new Ecar("중형 세단","테슬라 모델3", 67990000);
		ecar3.setCarName("모델3");
		ecar3.setDescription("테슬라(Tesla, Inc.)가 제작한 전기 자동차로, 회사의 대중 시장을 겨냥한 첫 차량입니다. 2017년에 출시되어 전 세계적으로 큰 인기를 얻었습니다. 모델 3는 고급스러운 디자인, 뛰어난 성능, 그리고 긴 주행 거리로 유명합니다."
				+ "모델 3는 테슬라의 목표인 전기차를 대중화하기 위한 핵심 모델로, 전 세계적으로 전기차 시장의 성장을 촉진하는 데 중요한 역할을 하고 있습니다.");
		ecar3.setCompany("테슬라");
		ecar3.setUnitsInStock(1000);		
		ecar3.setReleaseDate("2024/01/28");
		ecar3.setFileName("model_3.png");
		
		listOfEcars.add(ecar1);
		listOfEcars.add(ecar2);
		listOfEcars.add(ecar3);
				
	}
	public ArrayList<Ecar> getAllEcars() {
		return listOfEcars;
	}
	
	public Ecar getCarByName(String carName) {
		Ecar ecarByName = null;
		
		for(int i = 0; i < listOfEcars.size(); i++) {
			Ecar ecar = listOfEcars.get(i);
			if(ecar != null && ecar.getCarName() != null &&
			ecar.getCarName().equals(carName)) {
				ecarByName = ecar;
				break;
			}
		}
		return ecarByName;
	}
	
	public void addEcar(Ecar ecar) {
		listOfEcars.add(ecar);
	}
}
