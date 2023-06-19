.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
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

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/util/ArrayList;

.field m:Lcom/google/android/gms/wallet/wobs/l;

.field n:Ljava/util/ArrayList;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/util/ArrayList;

.field r:Z

.field s:Ljava/util/ArrayList;

.field t:Ljava/util/ArrayList;

.field u:Ljava/util/ArrayList;

.field v:Lcom/google/android/gms/wallet/wobs/f;

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/j;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->w:I

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->n:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->s:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->t:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->u:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->w:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->j:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->k:I

    iput-object p13, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->l:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->m:Lcom/google/android/gms/wallet/wobs/l;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->n:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->o:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->p:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->q:Ljava/util/ArrayList;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->r:Z

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->s:Ljava/util/ArrayList;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->t:Ljava/util/ArrayList;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->u:Ljava/util/ArrayList;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->v:Lcom/google/android/gms/wallet/wobs/f;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->w:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/j;->a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
