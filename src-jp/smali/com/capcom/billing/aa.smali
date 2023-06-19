.class public Lcom/capcom/billing/aa;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/capcom/billing/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "productId"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    sput-object v0, Lcom/capcom/billing/aa;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/capcom/billing/aa;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/capcom/billing/ab;

    invoke-direct {v0, p0, p1}, Lcom/capcom/billing/ab;-><init>(Lcom/capcom/billing/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capcom/billing/aa;->d:Lcom/capcom/billing/ab;

    iget-object v0, p0, Lcom/capcom/billing/aa;->d:Lcom/capcom/billing/ab;

    invoke-virtual {v0}, Lcom/capcom/billing/ab;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/i;JLjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p3}, Lcom/capcom/billing/i;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/i;JLjava/lang/String;)I
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/capcom/billing/aa;->b(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/i;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lcom/capcom/billing/aa;->a:[Ljava/lang/String;

    const-string v3, "productId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/capcom/billing/aa;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v2, 0x2

    :try_start_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/capcom/billing/i;->a(I)Lcom/capcom/billing/i;

    move-result-object v2

    sget-object v3, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/i;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/capcom/billing/i;->c:Lcom/capcom/billing/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v3, :cond_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/aa;->d:Lcom/capcom/billing/ab;

    invoke-virtual {v0}, Lcom/capcom/billing/ab;->close()V

    return-void
.end method

.method public b()Landroid/database/Cursor;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/capcom/billing/aa;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    sget-object v2, Lcom/capcom/billing/aa;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method
