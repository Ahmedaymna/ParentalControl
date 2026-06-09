# 👨‍👧‍👦 Parental Control - Advanced Monitoring System

## 📱 تطبيق رقابة أبوية متقدم للأندرويد

تطبيق احترافي وآمن لمراقبة وحماية أطفالك مع واجهة ثلاثية الأبعاد متطورة.

### ✨ الميزات الرئيسية:
- 🎮 واجهة ثلاثية الأبعاد (3D Dashboard)
- 📊 لوحة تحكم متقدمة ورائعة
- 🔒 إخفاء كامل للتطبيق على هاتف الطفل
- 📱 مراقبة التطبيقات المثبتة والمستخدمة
- ⏱️ التحكم الكامل بأوقات استخدام الجهاز
- 📍 تتبع الموقع الجغرافي GPS
- 📞 مراقبة المكالمات والرسائل النصية
- 🚫 حجب التطبيقات غير المرغوبة
- 🔐 تشفير عالي الأمان (AES-256)
- ⚡ تحديثات فورية Real-time
- 🌐 اتصال سحابي آمن
- 📊 إحصائيات وتحليلات مفصلة
- 🎯 تنبيهات فورية للأنشطة المريبة

### 🏗️ معمارية المشروع:
```
ParentalControl/
├── parent-app/              (تطبيق الأب - الواجهة الرئيسية)
│   ├── ui/
│   ├── models/
│   ├── services/
│   └── utils/
├── child-service/           (خدمة الطفل - الخدمة الخفية)
│   ├── services/
│   ├── receivers/
│   └── utils/
├── backend/                 (خادم البيانات)
│   ├── api/
│   ├── routes/
│   └── middleware/
└── docs/                    (التوثيق والأدلة)
```

### 🛠️ التقنيات المستخدمة:
- **Languages**: Kotlin, Java, JavaScript (Node.js)
- **Database**: Firebase Realtime DB, SQLite
- **3D Graphics**: OpenGL ES, Babylon.js
- **Network**: WebSocket, REST API, gRPC
- **Security**: Firebase Auth, AES-256 Encryption, SSL/TLS
- **Backend**: Node.js, Express.js, Socket.io
- **Build**: Gradle, npm

### 📋 المتطلبات:
- Android Studio 4.0+
- Android SDK 21+ (الحد الأدنى)
- Node.js 14+
- Firebase Account
- Java 11+

### 📁 هيكل الملفات:
```
.
├── README.md
├── .gitignore
├── parent-app/
│   ├── build.gradle
│   ├── settings.gradle
│   └── app/
│       ├── build.gradle
│       ├── src/
│       │   ├── main/
│       │   │   ├── AndroidManifest.xml
│       │   │   ├── kotlin/
│       │   │   ├── res/
│       │   │   └── assets/
│       │   └── test/
│       └── google-services.json
├── child-service/
│   ├── build.gradle
│   ├── settings.gradle
│   └── app/
│       ├── build.gradle
│       ├── src/
│       │   └── main/
│       │       ├── AndroidManifest.xml
│       │       ├── kotlin/
│       │       └── res/
│       └── google-services.json
├── backend/
│   ├── package.json
│   ├── server.js
│   ├── .env.example
│   ├── routes/
│   ├── middleware/
│   ├── models/
│   └── controllers/
└── docs/
    ├── SETUP.md
    ├── API.md
    ├── ARCHITECTURE.md
    └── SECURITY.md
```

### 🚀 البدء السريع:

#### 1️⃣ استنساخ المستودع:
```bash
git clone https://github.com/Ahmedaymna/ParentalControl.git
cd ParentalControl
```

#### 2️⃣ إعداد Firebase:
1. اذهب إلى [Firebase Console](https://console.firebase.google.com/)
2. أنشئ مشروع جديد
3. أضف تطبيقي Android
4. حمل ملف `google-services.json`
5. ضع الملف في `parent-app/app/` و `child-service/app/`

#### 3️⃣ بناء Parent App:
```bash
cd parent-app
./gradlew assembleDebug  # للاختبار
./gradlew assembleRelease  # للإنتاج
```

#### 4️⃣ بناء Child Service:
```bash
cd child-service
./gradlew assembleRelease
```

#### 5️⃣ إعداد Backend:
```bash
cd backend
npm install
cp .env.example .env
# عدّل ملف .env بيانات Firebase
npm start
```

### 📊 الميزات المتقدمة:

#### 🎮 واجهة 3D:
- عرض حي لحالة الجهاز
- رسوم بيانية متقدمة
- تصور البيانات في الوقت الفعلي

#### 🔐 الأمان:
- تشفير AES-256 لجميع البيانات الحساسة
- Firebase Authentication
- SSL/TLS للاتصالات
- بدون حفظ كلمات المرور

#### ⚡ الأداء:
- تحديثات فورية عبر WebSocket
- ضغط البيانات التلقائي
- تخزين محلي مؤقت

#### 📱 التوافقية:
- Android 5.0+ (API 21+)
- دعم شامل للأجهزة المختلفة

### 📸 لقطات الشاشة:
```
قريباً! Stay tuned! 🎬
```

### 📚 التوثيق:
- [دليل الإعداد](docs/SETUP.md)
- [API Reference](docs/API.md)
- [معمارية النظام](docs/ARCHITECTURE.md)
- [إرشادات الأمان](docs/SECURITY.md)

### 🔧 الأوامر الرئيسية:

```bash
# بناء النسخة الاختبارية
./gradlew assembleDebug

# بناء النسخة الإنتاجية
./gradlew assembleRelease

# تشغيل الاختبارات
./gradlew test

# فحص الكود
./gradlew lint

# تنظيف المشروع
./gradlew clean
```

### 🤝 المساهمة:
نرحب بمساهماتك! يرجى:
1. Fork المستودع
2. أنشئ فرع جديد (`git checkout -b feature/AmazingFeature`)
3. Commit التغييرات (`git commit -m 'Add some AmazingFeature'`)
4. Push إلى الفرع (`git push origin feature/AmazingFeature`)
5. افتح Pull Request

### ⚖️ ملاحظة قانونية وأخلاقية:

⚠️ **تحذير مهم:**
- هذا التطبيق يجب أن يُستخدم فقط لأغراض تربوية وقانونية
- يتطلب موافقة صريحة من جميع الأطراف
- الاستخدام غير المصرح به قد يكون جريمة
- الامتثال للقوانين المحلية إلزامي

### 📞 التواصل والدعم:
- 📧 البريد الإلكتروني: [أضف بريدك]
- 🐛 الإبلاغ عن الأخطاء: [Issues](../../issues)
- 💬 المناقشات: [Discussions](../../discussions)

### 📄 الترخيص:
هذا المشروع مرخص تحت [MIT License](LICENSE)

### 👨‍💻 المطور:
**Ahmedaymna**
- GitHub: [@Ahmedaymna](https://github.com/Ahmedaymna)
- متخصص في الأمن السيبراني و Red Team

---

## 🎯 الإحصائيات:
- ⭐ النجوم: ...
- 🍴 الـ Forks: ...
- 👁️ المشاهدات: ...

**آخر تحديث**: 2026-06-09

🌟 **إذا أعجبك المشروع، لا تنسَ إضافة نجمة!** ⭐
