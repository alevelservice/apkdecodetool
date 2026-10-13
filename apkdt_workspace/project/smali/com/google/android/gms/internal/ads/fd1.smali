.class public final enum Lcom/google/android/gms/internal/ads/fd1;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/i91;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/fd1;",
        ">;",
        "Lcom/google/android/gms/internal/ads/i91;"
    }
.end annotation


# static fields
.field private static final enum e:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum f:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum g:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum h:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum i:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum j:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum k:Lcom/google/android/gms/internal/ads/fd1;

.field private static final enum l:Lcom/google/android/gms/internal/ads/fd1;

.field private static final synthetic m:[Lcom/google/android/gms/internal/ads/fd1;

.field public static final enum zzhtw:Lcom/google/android/gms/internal/ads/fd1;

.field public static final enum zzhtx:Lcom/google/android/gms/internal/ads/fd1;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->e:Lcom/google/android/gms/internal/ads/fd1;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v2, 0x1

    const-string v3, "URL_PHISHING"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->f:Lcom/google/android/gms/internal/ads/fd1;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v3, 0x2

    const-string v4, "URL_MALWARE"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->g:Lcom/google/android/gms/internal/ads/fd1;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v4, 0x3

    const-string v5, "URL_UNWANTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->h:Lcom/google/android/gms/internal/ads/fd1;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v5, 0x4

    const-string v6, "CLIENT_SIDE_PHISHING_URL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->i:Lcom/google/android/gms/internal/ads/fd1;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v6, 0x5

    const-string v7, "CLIENT_SIDE_MALWARE_URL"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->j:Lcom/google/android/gms/internal/ads/fd1;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v7, 0x6

    const-string v8, "DANGEROUS_DOWNLOAD_RECOVERY"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->k:Lcom/google/android/gms/internal/ads/fd1;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/4 v8, 0x7

    const-string v9, "DANGEROUS_DOWNLOAD_WARNING"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->l:Lcom/google/android/gms/internal/ads/fd1;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/16 v9, 0x8

    const-string v10, "OCTAGON_AD"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->zzhtw:Lcom/google/android/gms/internal/ads/fd1;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/fd1;

    const/16 v10, 0x9

    const-string v11, "OCTAGON_AD_SB_MATCH"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/ads/fd1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->zzhtx:Lcom/google/android/gms/internal/ads/fd1;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/fd1;

    .line 11
    sget-object v11, Lcom/google/android/gms/internal/ads/fd1;->e:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->f:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->g:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->h:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->i:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->j:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->k:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->l:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->zzhtw:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/ads/fd1;->zzhtx:Lcom/google/android/gms/internal/ads/fd1;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/gms/internal/ads/fd1;->m:[Lcom/google/android/gms/internal/ads/fd1;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/od1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/od1;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/ads/fd1;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/fd1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/fd1;->m:[Lcom/google/android/gms/internal/ads/fd1;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/fd1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/fd1;

    return-object v0
.end method

.method public static zzac()Lcom/google/android/gms/internal/ads/k91;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nd1;->a:Lcom/google/android/gms/internal/ads/k91;

    return-object v0
.end method

.method public static zzhj(I)Lcom/google/android/gms/internal/ads/fd1;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->zzhtx:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->zzhtw:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->l:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->k:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->j:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->i:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->h:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->g:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->f:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/fd1;->e:Lcom/google/android/gms/internal/ads/fd1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/ads/fd1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/fd1;->value:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fd1;->value:I

    return v0
.end method
