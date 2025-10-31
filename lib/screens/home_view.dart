import 'package:flutter/material.dart';
import 'package:wayone/components/offer_banner.dart';
import 'package:wayone/components/section_header.dart';
import '../../data/repositories/dashboard_repository.dart';
import '../../components/loan_grid.dart';
import '../../components/insurance_grid.dart';
import '../../components/small_card.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = DashboardRepository();
    final loans = repo.getLoanItems();
    final ins = repo.getInsuranceItems();
    final offers = repo.getOffers();
    final newOffers = repo.getNewOffers();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Top padding + navbar icons to match image top-left menu + search + bell
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x11000000),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.menu, color: Colors.black87),
                    ),
                    const Spacer(),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x11000000),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.search, color: Colors.black54),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x11000000),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Offer Banner (first big card)
            SliverToBoxAdapter(
              child: OfferBanner(
                title: offers[0].title,
                subtitle: offers[0].subtitle,
                image: offers[0].imagePath,
                background: const Color(0xFFFFFFFF),
              ),
            ),

            // CIBIL Score row
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Container(
                  height: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF2E9AFE), Color(0xFF145C9E)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x11000000),
                        blurRadius: 8,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          AppAssets.cibil,
                          width: 90,
                          height: 90,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Check Your Credit Score Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '740 / 900',
                              style: TextStyle(
                                color: Colors.white70,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                          child: const Text('Check Now'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Get Loan header + grid
            SliverToBoxAdapter(child: SectionHeader(title: AppStrings.getLoan)),
            SliverToBoxAdapter(child: LoanGrid(items: loans)),

            // New Offers header + horizontal cards
            SliverToBoxAdapter(
              child: SectionHeader(title: AppStrings.newOffers),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 140,
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    final o = newOffers[i];
                    return Container(
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(o.imagePath),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x11000000),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              o.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              o.subtitle,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemCount: newOffers.length,
                ),
              ),
            ),

            // Credit card section
            SliverToBoxAdapter(
              child: SectionHeader(title: AppStrings.creditCard),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage(AppAssets.creditCard),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x11000000),
                        blurRadius: 8,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Insurance section header + grid
            SliverToBoxAdapter(
              child: SectionHeader(title: AppStrings.insurance),
            ),
            SliverToBoxAdapter(child: InsuranceGrid(items: ins)),

            // Trusted finance partner banner (offer 2)
            SliverToBoxAdapter(
              child: OfferBanner(
                title: offers[1].title,
                subtitle: offers[1].subtitle,
                image: offers[1].imagePath,
                background: const Color(0xFFFFFFFF),
                backgroundImage: offers[1].backgroundImage,
              ),
            ),

            // EMI calculation banner
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.emi),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x11000000),
                        blurRadius: 8,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  height: 100,
                ),
              ),
            ),

            // small cards row
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Row(
                  children: const [
                    Expanded(
                      child: SmallCard(
                        title: 'Buy Digital Gold',
                        subtitle: 'Get Digital Gold Now',
                        imagePath: 'assets/gold.png',
                        accentColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: SmallCard(
                        title: 'Fintech Tips',
                        subtitle: 'Get Fintech Tips',
                        imagePath: 'assets/lightbulb.png',
                        accentColor: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Refer banner
            SliverToBoxAdapter(
              child: OfferBanner(
                title: offers[2].title,
                subtitle: offers[2].subtitle,
                image: offers[2].imagePath,
                background: const Color(0xFFF3E8FF),
                backgroundImage: offers[2].backgroundImage,
              ),
            ),

            // bottom spacing
            SliverToBoxAdapter(child: const SizedBox(height: 36)),
          ],
        ),
      ),
    );
  }
}
