.class public Lcom/chartboost/sdk/CBUtility;
.super Ljava/lang/Object;


# static fields
.field private static ANDROID_AUID:Ljava/lang/String; = null

.field public static final ANDROID_AUID_COOKIE_FLAG:I = 0x1

.field public static final ANDROID_AUID_COOKIE_KEY:Ljava/lang/String; = "cb_auid"

.field public static final ANDROID_AUID_COOKIE_PREFIX:Ljava/lang/String; = "android-"

.field public static final AUID_STATIC_EMULATOR:Ljava/lang/String; = "ffff"

.field public static final AUID_STATIC_ERROR:Ljava/lang/String; = "unknown"

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "ChartBoost.cb"

.field public static final PREFERENCES_SDCARD_PATH:Ljava/lang/String; = "/Android/data/com.chartboost.sdk/files"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ChartBoost.cb"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "cb_auid"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/Android/data/com.chartboost.sdk/files/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ChartBoost.cb"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    :goto_3
    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    int-to-char v7, v7

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cb_auid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "unknown"

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_5
    sput-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method
