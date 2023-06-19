.class public Lorg/acra/CrashReportData;
.super Ljava/util/EnumMap;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field protected defaults:Lorg/acra/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    sput-object v0, Lorg/acra/CrashReportData;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/acra/CrashReportData;)V
    .locals 1

    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x20

    const/4 v1, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    const-string v0, "\\ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v3, "\\#!=:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    if-eqz p2, :cond_1

    if-ne v2, v5, :cond_1

    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-lt v2, v5, :cond_2

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_3

    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/io/BufferedInputStream;)Z
    .locals 3

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getProperty(Lorg/acra/ReportField;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-static {v0}, Lorg/acra/CrashReportData;->a(Ljava/io/BufferedInputStream;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 13

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x28

    :try_start_0
    new-array v3, v0, [C

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v0

    move v0, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v3

    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_10

    int-to-char v3, v3

    array-length v8, v6

    if-ne v2, v8, :cond_19

    array-length v8, v6

    shl-int/lit8 v8, v8, 0x1

    new-array v8, v8, [C

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_18

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_0

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x4

    if-ge v4, v1, :cond_17

    move v1, v4

    move v4, v6

    move-object v6, v8

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    if-gt v1, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v5, v4

    move v4, v1

    :goto_2
    const/4 v6, 0x0

    add-int/lit8 v1, v2, 0x1

    int-to-char v10, v5

    :try_start_1
    aput-char v10, v8, v2

    const/16 v2, 0xa

    if-eq v3, v2, :cond_2

    const/16 v2, 0x85

    if-ne v3, v2, :cond_16

    :cond_2
    move v2, v6

    :goto_3
    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    const/4 v2, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :cond_4
    add-int/lit8 v7, v1, 0x1

    aput-char v3, v8, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v7

    move v7, v6

    move-object v6, v8

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x3

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto :goto_0

    :sswitch_2
    const/16 v3, 0x8

    goto :goto_4

    :sswitch_3
    const/16 v3, 0xc

    goto :goto_4

    :sswitch_4
    const/16 v3, 0xa

    goto :goto_4

    :sswitch_5
    const/16 v3, 0xd

    goto :goto_4

    :sswitch_6
    const/16 v3, 0x9

    goto :goto_4

    :sswitch_7
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v6, v8

    move v5, v2

    move v2, v1

    move v1, v4

    goto/16 :goto_0

    :cond_5
    sparse-switch v3, :sswitch_data_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x3

    if-ne v2, v6, :cond_7

    const/4 v2, 0x5

    :cond_7
    if-eqz v1, :cond_15

    if-eq v1, v0, :cond_15

    const/4 v6, 0x5

    if-eq v2, v6, :cond_15

    const/4 v6, -0x1

    if-ne v0, v6, :cond_e

    const/4 v2, 0x4

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :sswitch_8
    if-eqz v7, :cond_6

    :cond_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_15

    int-to-char v3, v3

    const/16 v6, 0xd

    if-eq v3, v6, :cond_15

    const/16 v6, 0xa

    if-eq v3, v6, :cond_15

    const/16 v6, 0x85

    if-ne v3, v6, :cond_8

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :sswitch_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :cond_9
    :sswitch_a
    const/4 v6, 0x0

    const/4 v2, 0x1

    if-gtz v1, :cond_a

    if-nez v1, :cond_c

    if-nez v0, :cond_c

    :cond_a
    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    move v0, v1

    :cond_b
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v8, v7, v1}, Ljava/lang/String;-><init>([CII)V

    const-class v1, Lorg/acra/ReportField;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v7, v2

    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    goto/16 :goto_0

    :sswitch_b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    move v0, v1

    :cond_d
    const/4 v2, 0x1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :sswitch_c
    const/4 v6, -0x1

    if-ne v0, v6, :cond_6

    const/4 v2, 0x0

    move v0, v1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x5

    if-eq v2, v6, :cond_f

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x2

    if-ne v5, v3, :cond_11

    const/4 v3, 0x4

    if-gt v1, v3, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    if-lez v2, :cond_14

    move v1, v2

    :goto_5
    if-ltz v1, :cond_13

    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v6, v0, v2}, Ljava/lang/String;-><init>([CII)V

    const-class v0, Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v5, v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    invoke-virtual {p0, v0, v1}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_13
    monitor-exit p0

    return-void

    :cond_14
    move v1, v0

    goto :goto_5

    :cond_15
    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_0

    :cond_16
    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    goto/16 :goto_0

    :cond_17
    move v5, v6

    goto/16 :goto_2

    :cond_18
    move v12, v2

    move v2, v5

    move v5, v4

    move v4, v1

    move v1, v12

    goto/16 :goto_3

    :cond_19
    move-object v8, v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v0, "ISO8859_1"

    invoke-direct {v3, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lorg/acra/CrashReportData;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v2, v1, v5}, Lorg/acra/CrashReportData;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/acra/CrashReportData;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    sget-object v0, Lorg/acra/CrashReportData;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v0, Lorg/acra/CrashReportData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lorg/acra/CrashReportData;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/acra/CrashReportData;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    sget-object v0, Lorg/acra/CrashReportData;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "\"?>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "\">"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v0, "<comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/acra/CrashReportData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "</comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "<entry key=\""

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/acra/CrashReportData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v1, "\">"

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/acra/CrashReportData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "</entry>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: encoding name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    goto/16 :goto_0

    :cond_3
    const-string v0, "</properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method
