.class Lcom/capcom/zombiecafeandroid/DeviceType;
.super Ljava/lang/Object;


# static fields
.field public static UseIPad:I

.field public static UseIPhone3:I

.field public static UseIPhone4:I

.field public static maxDevices:I


# instance fields
.field public actualDevice:I

.field public brand:[Ljava/lang/String;

.field public graphics:[I

.field public manufacturer:[Ljava/lang/String;

.field public model:[Ljava/lang/String;

.field public mouseX:[I

.field public mouseY:[I

.field public multiTouch:[Z

.field public numDevices:I

.field public screenH:[I

.field public screenW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    const/4 v0, 0x5

    sput v0, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v0, 0x6

    sput v0, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone3:I

    const/4 v0, 0x7

    sput v0, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPad:I

    return-void
.end method

.method constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->manufacturer:[Ljava/lang/String;

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->model:[Ljava/lang/String;

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->brand:[Ljava/lang/String;

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->screenW:[I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->screenH:[I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->mouseX:[I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->mouseY:[I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->graphics:[I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->multiTouch:[Z

    const-string v0, "Adding Valid Android Devices"

    const-string v1, "to overall list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "samsung"

    const-string v2, "SCH-I800"

    const-string v3, "Galaxy Tab"

    const/4 v4, 0x0

    const/16 v5, -0x96

    const/16 v6, 0x400

    const/16 v7, 0x258

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Motorola"

    const-string v2, "Xoom"

    const-string v3, "The Zoom"

    const/4 v4, 0x0

    const/16 v5, -0x110

    const/16 v6, 0x500

    const/16 v7, 0x2f0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Samsung"

    const-string v2, "SCH-I500"

    const-string v3, "Fascination"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x356

    const/16 v7, 0x190

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Samsung"

    const-string v2, "SCH-I400"

    const-string v3, "Continuum"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Samsung"

    const-string v2, "SPH-D700"

    const-string v3, "Epic 4G"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "samsung"

    const-string v2, "SC-02B"

    const-string v3, "NT DOCOMO"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "samsung"

    const-string v2, "GT-P7100"

    const-string v3, "Galaxy Tab 10.1"

    const/4 v4, 0x0

    const/16 v5, -0x113

    const/16 v6, 0x500

    const/16 v7, 0x320

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "LGE"

    const-string v2, "Vortex"

    const-string v3, "Vortex"

    const/4 v4, 0x0

    const/16 v5, 0xaf

    const/16 v6, 0x1e0

    const/16 v7, 0x140

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "LGE"

    const-string v2, "Ally"

    const-string v3, "LG Ally"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "LGE"

    const-string v2, "LS670"

    const-string v3, "Sprint - LG Optimus S"

    const/4 v4, 0x0

    const/16 v5, 0xaf

    const/16 v6, 0x1e0

    const/16 v7, 0x140

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "HTC"

    const-string v2, "PG06100"

    const-string v3, "EVO Shift 4G"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "HTC"

    const-string v2, "ADR6300"

    const-string v3, "Droid Incredible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "HTC"

    const-string v2, "ADR6400L"

    const-string v3, "Thunderbolt"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "KYOCERA"

    const-string v2, "Zio"

    const-string v3, "Sanyo Zio"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Motorola"

    const-string v2, "Droid"

    const-string v3, "Droid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x356

    const/16 v7, 0x190

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "motorola"

    const-string v2, "DROID2 GLOBAL"

    const-string v3, "DROID 2 GLOBAL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x356

    const/16 v7, 0x190

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "motorola"

    const-string v2, "DROID PRO"

    const-string v3, "DROID PRO"

    const/4 v4, 0x0

    const/16 v5, 0xaf

    const/16 v6, 0x1e0

    const/16 v7, 0x140

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "motorola"

    const-string v2, "DROIDX"

    const-string v3, "DROID X"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x356

    const/16 v7, 0x1e0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Samsung"

    const-string v2, "SPH-M920"

    const-string v3, "Transform"

    const/4 v4, 0x0

    const/16 v5, 0x96

    const/16 v6, 0x1e0

    const/16 v7, 0x140

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "Samsung"

    const-string v2, "SPH-M910"

    const-string v3, "Intercept"

    const/4 v4, 0x0

    const/16 v5, 0xf0

    const/16 v6, 0x190

    const/16 v7, 0xf0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    const-string v1, "motorola"

    const-string v2, "WX445"

    const-string v3, "CITRUS"

    const/4 v4, 0x0

    const/16 v5, 0xf0

    const/16 v6, 0x140

    const/16 v7, 0xf0

    sget v8, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone3:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/capcom/zombiecafeandroid/DeviceType;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/DeviceType;->listDevices()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V
    .locals 3

    iget v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    sget v1, Lcom/capcom/zombiecafeandroid/DeviceType;->maxDevices:I

    if-ne v0, v1, :cond_0

    const-string v0, "ANDROID ERROR!"

    const-string v1, "TOO MANY DEVICES!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->manufacturer:[Ljava/lang/String;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->model:[Ljava/lang/String;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->brand:[Ljava/lang/String;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput-object p3, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->screenW:[I

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput p6, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->screenH:[I

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput p7, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->mouseX:[I

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->mouseY:[I

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput p5, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->graphics:[I

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput p8, v0, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->multiTouch:[Z

    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    aput-boolean p9, v0, v1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    goto :goto_0
.end method

.method public static getDeviceID()V
    .locals 10

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAndroidID:Ljava/lang/String;

    new-instance v3, Ljava/util/UUID;

    sget-object v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v8, v0

    or-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "This Android Has a Device ID of length="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "The Simple Telephony Manage Device ID is"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "The ANDROID_ID Device ID is"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "utf8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "THIS ANDROID_ID IS GOOD! Length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "THIS ANDROID_ID IS BAD!!!"

    const-string v1, "USE THE TELEPHONY DEVICE ID"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getAndroidDevice()I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    return v0
.end method

.method public getDeviceType(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5

    const/16 v4, 0x3e8

    const/4 v3, 0x2

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    if-lt v0, v2, :cond_0

    const-string v0, "ERROR!!!"

    const-string v2, "COULD NOT FIND DEVICE TYPE!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le p3, v4, :cond_2

    const/16 v0, 0x2bc

    if-le p4, v0, :cond_2

    const-string v0, "Ugly Square Device"

    const-string v2, "Assume Galaxy Tab S, #0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->manufacturer:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->model:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Device #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->brand:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le p3, v4, :cond_3

    const-string v0, "Very Wide Device"

    const-string v2, "Assume Galaxy Tab S, #0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x1e0

    if-ge p3, v0, :cond_4

    const-string v0, "Problematic Small Device"

    const-string v2, "Might Not work due to bad mouse offset, #2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    goto :goto_1

    :cond_4
    const-string v0, "Typical Devies (840x400)"

    const-string v2, "Assume Samsung Fascination, #2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->actualDevice:I

    goto :goto_1
.end method

.method public getGraphicSet()I
    .locals 5

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "Game::Get Graphic Set For"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    if-lt v0, v3, :cond_0

    const-string v0, "ERROR!!!"

    const-string v1, "COULD NOT FIND GRAPHIC SET"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/capcom/zombiecafeandroid/DeviceType;->UseIPhone4:I

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->manufacturer:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->model:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Device #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "graphics ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->graphics:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->graphics:[I

    aget v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public listDevices()V
    .locals 4

    const-string v0, "COMPLETE LIST"

    const-string v1, "ANDRIOD DEVICES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "============="

    const-string v1, "==============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->numDevices:I

    if-lt v0, v1, :cond_0

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->manufacturer:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->model:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->brand:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/DeviceType;->graphics:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
