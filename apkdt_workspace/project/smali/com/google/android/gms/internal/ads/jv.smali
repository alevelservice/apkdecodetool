.class public final Lcom/google/android/gms/internal/ads/jv;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-gass@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/jv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/jv;",
        "Lcom/google/android/gms/internal/ads/jv$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/jv;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzli:Lcom/google/android/gms/internal/ads/jv;


# instance fields
.field private zzdj:I

.field private zzgx:I

.field private zzgy:I

.field private zzkk:Lcom/google/android/gms/internal/ads/t71;

.field private zzlh:Lcom/google/android/gms/internal/ads/l91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/l91<",
            "Lcom/google/android/gms/internal/ads/t71;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jv;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/jv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e91;->j()Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzlh:Lcom/google/android/gms/internal/ads/l91;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/t71;->zzhfn:Lcom/google/android/gms/internal/ads/t71;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzkk:Lcom/google/android/gms/internal/ads/t71;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzgy:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzgx:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jv;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jv;->a(Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jv;Lcom/google/android/gms/internal/ads/t71;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jv;->b(Lcom/google/android/gms/internal/ads/t71;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/n20;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzdj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzdj:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n20;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jv;->zzgx:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/t71;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzdj:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jv;->zzkk:Lcom/google/android/gms/internal/ads/t71;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/jv;Lcom/google/android/gms/internal/ads/t71;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jv;->a(Lcom/google/android/gms/internal/ads/t71;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/t71;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzlh:Lcom/google/android/gms/internal/ads/l91;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzlh:Lcom/google/android/gms/internal/ads/l91;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/l91;)Lcom/google/android/gms/internal/ads/l91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzlh:Lcom/google/android/gms/internal/ads/l91;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->zzlh:Lcom/google/android/gms/internal/ads/l91;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static k()Lcom/google/android/gms/internal/ads/jv$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/jv$a;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/ads/jv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 9
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/jv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/ads/jv;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/jv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 14
    sput-object p1, Lcom/google/android/gms/internal/ads/jv;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 15
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzlh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzkk"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzgy"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/n70;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzgx"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/n20;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/jv;->zzli:Lcom/google/android/gms/internal/ads/jv;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\u000c\u0001\u0004\u000c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/jv$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/jv$a;-><init>(Lcom/google/android/gms/internal/ads/kw;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/jv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jv;-><init>()V

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
