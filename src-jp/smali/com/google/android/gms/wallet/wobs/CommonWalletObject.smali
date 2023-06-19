.class public Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/util/ArrayList;

.field k:Lcom/google/android/gms/wallet/wobs/l;

.field l:Ljava/util/ArrayList;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/util/ArrayList;

.field p:Z

.field q:Ljava/util/ArrayList;

.field r:Ljava/util/ArrayList;

.field s:Ljava/util/ArrayList;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/e;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->t:I

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->j:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->o:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->r:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->s:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->t:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->h:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->i:I

    iput-object p11, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->j:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->k:Lcom/google/android/gms/wallet/wobs/l;

    iput-object p13, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->l:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->n:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->o:Ljava/util/ArrayList;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->p:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->q:Ljava/util/ArrayList;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->r:Ljava/util/ArrayList;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/google/android/gms/wallet/wobs/c;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/wobs/c;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/c;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/a;)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->t:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/e;->a(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
