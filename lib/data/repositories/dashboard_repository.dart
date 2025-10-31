import 'package:flutter/material.dart';
import '../../models/loan_item_model.dart';
import '../../models/insurance_item_model.dart';
import '../../models/offer_model.dart';
import '../../constants/app_assets.dart';

class DashboardRepository {
  List<LoanItemModel> getLoanItems() {
    return const [
      LoanItemModel(icon: Icons.account_balance_wallet, title: "Instant Loan"),
      LoanItemModel(icon: Icons.person, title: "Personal Loan"),
      LoanItemModel(icon: Icons.business, title: "Business Loan"),
      LoanItemModel(icon: Icons.directions_car, title: "Car Loan"),
      LoanItemModel(icon: Icons.home_filled, title: "Home Loan"),
      LoanItemModel(icon: Icons.house_siding, title: "Loan Against Property"),
      LoanItemModel(icon: Icons.home_repair_service, title: "Renovation Loan"),
      LoanItemModel(icon: Icons.work, title: "Working Capital"),
      LoanItemModel(icon: Icons.school, title: "Educational loan"),
      LoanItemModel(icon: Icons.shield, title: "Loan Against Security"),
      LoanItemModel(
        icon: Icons.precision_manufacturing,
        title: "Machinery Loan",
      ),
      LoanItemModel(icon: Icons.add, title: "See All"),
    ];
  }

  List<InsuranceItemModel> getInsuranceItems() {
    return const [
      InsuranceItemModel(icon: Icons.person, title: "Life Insurance"),
      InsuranceItemModel(icon: Icons.security, title: "Loan Suraksha"),
      InsuranceItemModel(icon: Icons.favorite, title: "Health Insurance"),
      InsuranceItemModel(
        icon: Icons.directions_car,
        title: "Vehicle Insurance",
      ),
      InsuranceItemModel(icon: Icons.apartment, title: "Property Insurance"),
      InsuranceItemModel(icon: Icons.show_chart, title: "Stock Insurance"),
      InsuranceItemModel(icon: Icons.storefront, title: "Shop Insurance"),
      InsuranceItemModel(
        icon: Icons.precision_manufacturing,
        title: "Machinery Insurance",
      ),
      InsuranceItemModel(icon: Icons.calendar_today, title: "Term Insurance"),
      InsuranceItemModel(
        icon: Icons.airplanemode_active,
        title: "Travel Insurance",
      ),
      InsuranceItemModel(icon: Icons.savings, title: "Retirement Plans"),
      InsuranceItemModel(
        icon: Icons.family_restroom,
        title: "Family Health Insurance",
      ),
    ];
  }

  List<OfferModel> getOffers() {
    return [
      OfferModel(
        title: 'Summer Cashback Offer',
        subtitle: 'Get flat ₹500 off your first EMI\nLimited time only!',
        imagePath: AppAssets.banner1,
      ),
      OfferModel(
        title: 'Your Trusted Finance Partner',
        subtitle: 'Instant Loans Made Easy',
        imagePath: AppAssets.banner2,
        backgroundImage: AppAssets.bgbanner2,
      ),
      OfferModel(
        title: 'Refer & Earn',
        subtitle: 'Earn Rewards upto/ Rs 40,000+/ Month',
        imagePath: AppAssets.refer,
        backgroundImage: AppAssets.bgbanner3,
      ),
    ];
  }

  List<OfferModel> getNewOffers() => [
    OfferModel(title: '', subtitle: '', imagePath: AppAssets.newOffer1),
    OfferModel(title: '', subtitle: '', imagePath: AppAssets.newOffer2),
  ];
}
