.class public Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/c;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
