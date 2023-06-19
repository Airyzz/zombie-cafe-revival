.class public final Lcom/paypal/android/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Ljava/util/Hashtable;

.field private static c:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "de_at"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "de_ch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "de_de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "en_at"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "en_au"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "en_be"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "en_ca"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "en_ch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "en_de"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "en_es"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "en_fr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "en_gb"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "en_hk"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en_in"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "en_jp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "en_mx"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "en_nl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "en_pl"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "en_sg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "en_tw"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "en_us"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "es_ar"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "es_es"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "es_mx"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "fr_be"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "fr_ca"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "fr_ch"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "fr_fr"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "it_it"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ja_jp"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "nl_be"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "nl_nl"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pl_pl"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pt_br"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "zh_hk"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "zh_tw"

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/b/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "T"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    const-string v0, "Error with timestamp."

    :goto_0
    return-object v0

    :cond_0
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "DE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "FR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "IN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "NL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "AT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "MX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "SG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "IT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "AR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move p1, v1

    :cond_2
    :goto_1
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    const-string v0, "BE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "JP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/paypal/android/b/d;->c:Ljava/text/NumberFormat;

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    sget-object v0, Lcom/paypal/android/b/d;->c:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    sput-object v0, Lcom/paypal/android/b/d;->c:Ljava/text/NumberFormat;

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v4, Lcom/paypal/android/b/d;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/paypal/android/b/d;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 7

    const/16 v2, 0x4e83

    const/16 v4, 0x46e2

    const/16 v3, 0x4619

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const-string p0, "en_US"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v0, "en_US"

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    sput-object v0, Lcom/paypal/android/b/d;->c:Ljava/text/NumberFormat;

    const-string v0, "de_at"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v4, 0x58cd9

    move v0, v2

    :goto_1
    const-string v1, "com/paypal/android/utils/data/locale.bin"

    invoke-static {v1}, Lcom/paypal/android/b/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/paypal/android/b/a;->a(II[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    move v0, v5

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_26

    aget-object v2, v1, v0

    const-string v3, "\" = \""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\" = \""

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v5

    const/16 v4, 0x22

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\";"

    const-string v6, " "

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/paypal/android/b/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "de_ch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4ed1

    goto :goto_1

    :cond_4
    const-string v0, "de_de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v4, 0x4ee78

    move v0, v2

    goto :goto_1

    :cond_5
    const-string v0, "en_at"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v4, 0x20a1c

    move v0, v3

    goto :goto_1

    :cond_6
    const-string v0, "en_au"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v4, 0x781db

    const/16 v0, 0x47e3

    goto/16 :goto_1

    :cond_7
    const-string v0, "en_be"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v4, 0xa2708

    const/16 v0, 0x46c3

    goto/16 :goto_1

    :cond_8
    const-string v0, "en_ca"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v4, 0x95363

    const/16 v0, 0x4683

    goto/16 :goto_1

    :cond_9
    const-string v0, "en_ch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v4, 0x73b68

    const/16 v0, 0x4673

    goto/16 :goto_1

    :cond_a
    const-string v0, "en_de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v4, 0x12e13

    move v0, v3

    goto/16 :goto_1

    :cond_b
    const-string v0, "en_es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v4, 0x999e6

    const/16 v0, 0x4687

    goto/16 :goto_1

    :cond_c
    const-string v0, "en_fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v4, 0x411d8

    const/16 v0, 0x468b

    goto/16 :goto_1

    :cond_d
    const-string v0, "en_gb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v4, 0x6ad9d

    const/16 v0, 0x46e6

    goto/16 :goto_1

    :cond_e
    const-string v0, "en_hk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v4, 0x6f483

    const/16 v0, 0x46e5

    goto/16 :goto_1

    :cond_f
    const-string v0, "en_in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v4, 0x45863

    const/16 v0, 0x46ae

    goto/16 :goto_1

    :cond_10
    const-string v0, "en_jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v4, 0x5db5c

    const/16 v0, 0x4604

    goto/16 :goto_1

    :cond_11
    const-string v0, "en_mx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v4, 0x1c3a0

    const/16 v0, 0x467c

    goto/16 :goto_1

    :cond_12
    const-string v0, "en_nl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v4, 0x666dd

    const/16 v0, 0x46c0

    goto/16 :goto_1

    :cond_13
    const-string v0, "en_pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v4, 0x7c9be

    const/16 v0, 0x47f5

    goto/16 :goto_1

    :cond_14
    const-string v0, "en_sg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v4, 0x25035

    const/16 v0, 0x46bd

    goto/16 :goto_1

    :cond_15
    const-string v0, "en_tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v4

    move v4, v5

    goto/16 :goto_1

    :cond_16
    const-string v0, "en_us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v4, 0x9e06d

    const/16 v0, 0x469b

    goto/16 :goto_1

    :cond_17
    const-string v0, "es_ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v4, 0x32f16

    const/16 v0, 0x4bf3

    goto/16 :goto_1

    :cond_18
    const-string v0, "es_es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v4, 0xe28e

    const/16 v0, 0x4b85

    goto/16 :goto_1

    :cond_19
    const-string v0, "es_mx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v4, 0x37b09

    const/16 v0, 0x4bd4

    goto/16 :goto_1

    :cond_1a
    const-string v0, "fr_be"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const v4, 0x49f11

    const/16 v0, 0x4f67

    goto/16 :goto_1

    :cond_1b
    const-string v0, "fr_ca"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v4, 0x2daa8

    const/16 v0, 0x546e

    goto/16 :goto_1

    :cond_1c
    const-string v0, "fr_ch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v4, 0x1742c

    const/16 v0, 0x4f74

    goto/16 :goto_1

    :cond_1d
    const-string v0, "fr_fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v4, 0x90434

    const/16 v0, 0x4f2f

    goto/16 :goto_1

    :cond_1e
    const-string v0, "it_it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v4, 0x95b3

    const/16 v0, 0x4cdb

    goto/16 :goto_1

    :cond_1f
    const-string v0, "ja_jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v4, 0x8a9b6

    const/16 v0, 0x5a7e

    goto/16 :goto_1

    :cond_20
    const-string v0, "nl_be"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v4, 0x811b3

    const/16 v0, 0x4b09

    goto/16 :goto_1

    :cond_21
    const-string v0, "nl_nl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const v4, 0x3c6dd

    const/16 v0, 0x4afb

    goto/16 :goto_1

    :cond_22
    const-string v0, "pl_pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v4, 0x53cfb

    const/16 v0, 0x4fde

    goto/16 :goto_1

    :cond_23
    const-string v0, "pt_br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v4, 0x85cbc

    const/16 v0, 0x4cfa

    goto/16 :goto_1

    :cond_24
    const-string v0, "zh_hk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v4, 0x296f2

    const/16 v0, 0x43b6

    goto/16 :goto_1

    :cond_25
    const-string v0, "zh_tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const v4, 0x62160

    const/16 v0, 0x457d

    goto/16 :goto_1

    :cond_26
    return-void

    :cond_27
    move v0, v5

    move v4, v5

    goto/16 :goto_1

    :cond_28
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, -0x1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-le v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
