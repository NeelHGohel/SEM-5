// import '../../utils/import_export.dart';
//
// class CardDetailDesignPage extends StatefulWidget {
//   final dynamic user;
//   const CardDetailDesignPage({super.key, this.user});
//
//   @override
//   State<CardDetailDesignPage> createState() => _CardDetailDesignPageState();
// }
//
// class _CardDetailDesignPageState extends State<CardDetailDesignPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(widget.user[CARD_USER_NAME],style: TextStyle(color: Colors.white),),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Card(
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 CircleAvatar(
//                   radius: 40,
//                   backgroundColor: Colors.black,
//                   child: Text(
//                     widget.user[CARD_USER_NAME][0].toUpperCase(),
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 _buildDetailRow("Name", widget.user[CARD_USER_NAME]),
//                 _buildDetailRow("City", widget.user[CARD_USER_CITY]),
//                 _buildDetailRow("Phone", widget.user[CARD_USER_PHONE]),
//                 _buildDetailRow("Email", widget.user[CARD_USER_EMAIL]),
//                 _buildDetailRow("Gender", widget.user[CARD_USER_GENDER]),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDetailRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6.0),
//       child: Row(
//         children: [
//           Icon(_getIconForField(title), color: Colors.black),
//           SizedBox(width: 10),
//           Text("$title: ", style: TextStyle(fontWeight: FontWeight.bold)),
//           Expanded(child: Text(value)),
//         ],
//       ),
//     );
//   }
//
//   IconData _getIconForField(String field) {
//     switch (field.toLowerCase()) {
//       case 'name':
//         return Icons.person;
//       case 'city':
//         return Icons.location_city;
//       case 'phone':
//         return Icons.phone;
//       case 'email':
//         return Icons.email;
//       case 'gender':
//         return Icons.wc;
//       default:
//         return Icons.info_outline;
//     }
//   }
// }

import '../../utils/import_export.dart';

class CardDetailDesignPage extends StatefulWidget {
  final dynamic user;
  const CardDetailDesignPage({super.key, this.user});

  @override
  State<CardDetailDesignPage> createState() => _CardDetailDesignPageState();
}

class _CardDetailDesignPageState extends State<CardDetailDesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: Text(
          widget.user[CARD_USER_NAME],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          children: [
            // Profile Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF1E1E1E), Color(0xFF2A2A2A)],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Profile Avatar
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF6366F1).withOpacity(0.4),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          widget.user[CARD_USER_NAME][0].toUpperCase(),
                          style: const TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Name with enhanced styling
                    Text(
                      widget.user[CARD_USER_NAME],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),

                    // Location subtitle
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 16,
                          color: Color(0xFF9CA3AF),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.user[CARD_USER_CITY],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Details Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFF2A2A2A), width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    _buildDetailRow(
                      "Phone",
                      widget.user[CARD_USER_PHONE],
                      Icons.phone,
                    ),
                    _buildDetailRow(
                      "Email",
                      widget.user[CARD_USER_EMAIL],
                      Icons.email,
                    ),
                    _buildDetailRow(
                      "Gender",
                      widget.user[CARD_USER_GENDER],
                      Icons.wc,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.call,
                    label: "Call",
                    color: Color(0xFF10B981),
                    onTap: () async {
                      final Uri phoneUri = Uri(
                        scheme: 'tel',
                        path: widget.user[CARD_USER_PHONE].toString(),
                      );
                      await launchUrl(phoneUri);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.message,
                    label: "Message",
                    color: const Color(0xFF3B82F6),
                    onTap: () async {
                      Uri smsUri = Uri(
                        scheme: 'sms',
                        path: widget.user[CARD_USER_PHONE].toString(),
                      );
                      await launchUrl(smsUri);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.email,
                    label: "Email",
                    color: const Color(0xFF8B5CF6),
                    onTap: () async {
                      Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: widget.user[CARD_USER_EMAIL].toString(),
                      );
                      await launchUrl(emailUri);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF3A3A3A), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF374151),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: const Color(0xFF9CA3AF), size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9CA3AF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.3), width: 1),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
