.class public final Lcom/google/android/gms/internal/ads/q31;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/q31$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/q31;",
        "Lcom/google/android/gms/internal/ads/q31$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/q31;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgvr:Lcom/google/android/gms/internal/ads/q31;


# instance fields
.field private zzgvo:Lcom/google/android/gms/internal/ads/y31;

.field private zzgvp:Lcom/google/android/gms/internal/ads/m31;

.field private zzgvq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/q31;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/q31;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/q31;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/ads/q31;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    return-object v0
.end method

.method static synthetic q()Lcom/google/android/gms/internal/ads/q31;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/r31;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/q31;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/ads/q31;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/q31;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/ads/q31;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgvo"

    aput-object v0, p1, p2

    const-string p2, "zzgvp"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzgvq"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/q31;->zzgvr:Lcom/google/android/gms/internal/ads/q31;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/q31$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/q31$a;-><init>(Lcom/google/android/gms/internal/ads/r31;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/q31;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/q31;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lcom/google/android/gms/internal/ads/y31;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q31;->zzgvo:Lcom/google/android/gms/internal/ads/y31;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/y31;->o()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/m31;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q31;->zzgvp:Lcom/google/android/gms/internal/ads/m31;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m31;->m()Lcom/google/android/gms/internal/ads/m31;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/k31;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/q31;->zzgvq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k31;->zzec(I)Lcom/google/android/gms/internal/ads/k31;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/k31;->zzgus:Lcom/google/android/gms/internal/ads/k31;

    :cond_0
    return-object v0
.end method
