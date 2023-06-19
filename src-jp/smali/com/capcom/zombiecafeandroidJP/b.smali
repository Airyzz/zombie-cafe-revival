.class public Lcom/capcom/zombiecafeandroidJP/b;
.super Ljava/lang/Object;


# static fields
.field private static a:F

.field private static b:I

.field private static c:Landroid/hardware/Sensor;

.field private static d:Landroid/hardware/SensorManager;

.field private static e:Lcom/capcom/zombiecafeandroidJP/a;

.field private static f:Ljava/lang/Boolean;

.field private static g:Z

.field private static h:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3e4ccccd

    sput v0, Lcom/capcom/zombiecafeandroidJP/b;->a:F

    const/16 v0, 0x3e8

    sput v0, Lcom/capcom/zombiecafeandroidJP/b;->b:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/b;->g:Z

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/c;

    invoke-direct {v0}, Lcom/capcom/zombiecafeandroidJP/c;-><init>()V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/b;->h:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FI)V
    .locals 0

    sput p0, Lcom/capcom/zombiecafeandroidJP/b;->a:F

    sput p1, Lcom/capcom/zombiecafeandroidJP/b;->b:I

    return-void
.end method

.method public static a(Lcom/capcom/zombiecafeandroidJP/a;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/b;->c:Landroid/hardware/Sensor;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/b;->h:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/b;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/b;->g:Z

    sput-object p0, Lcom/capcom/zombiecafeandroidJP/b;->e:Lcom/capcom/zombiecafeandroidJP/a;

    :cond_0
    return-void
.end method

.method public static a(Lcom/capcom/zombiecafeandroidJP/a;FI)V
    .locals 0

    invoke-static {p1, p2}, Lcom/capcom/zombiecafeandroidJP/b;->a(FI)V

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/b;->a(Lcom/capcom/zombiecafeandroidJP/a;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/b;->g:Z

    return v0
.end method

.method public static b()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/b;->g:Z

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->h:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/b;->h:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    const/4 v1, 0x1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/capcom/zombiecafeandroidJP/b;->f:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/b;->f:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method static synthetic d()F
    .locals 1

    sget v0, Lcom/capcom/zombiecafeandroidJP/b;->a:F

    return v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/capcom/zombiecafeandroidJP/b;->b:I

    return v0
.end method

.method static synthetic f()Lcom/capcom/zombiecafeandroidJP/a;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/b;->e:Lcom/capcom/zombiecafeandroidJP/a;

    return-object v0
.end method
