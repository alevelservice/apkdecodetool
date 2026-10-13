.class public final Lcom/google/android/gms/internal/ads/sv0;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-gass@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/sv0$b;,
        Lcom/google/android/gms/internal/ads/sv0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/sv0;",
        "Lcom/google/android/gms/internal/ads/sv0$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/sv0;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgnb:Lcom/google/android/gms/internal/ads/m91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/m91<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/sv0$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgnf:Lcom/google/android/gms/internal/ads/sv0;


# instance fields
.field private zzdj:I

.field private zzgna:Lcom/google/android/gms/internal/ads/j91;

.field private zzgnc:Ljava/lang/String;

.field private zzgnd:Ljava/lang/String;

.field private zzgne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rv0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rv0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/sv0;->zzgnb:Lcom/google/android/gms/internal/ads/m91;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/sv0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sv0;-><init>()V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    .line 4
    const-class v1, Lcom/google/android/gms/internal/ads/sv0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e91;->i()Lcom/google/android/gms/internal/ads/j91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgna:Lcom/google/android/gms/internal/ads/j91;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgnc:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgnd:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgne:Ljava/lang/String;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/sv0$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgna:Lcom/google/android/gms/internal/ads/j91;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/l91;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgna:Lcom/google/android/gms/internal/ads/j91;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/j91;)Lcom/google/android/gms/internal/ads/j91;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgna:Lcom/google/android/gms/internal/ads/j91;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgna:Lcom/google/android/gms/internal/ads/j91;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sv0$a;->zzab()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/j91;->h(I)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/sv0;Lcom/google/android/gms/internal/ads/sv0$a;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sv0;->a(Lcom/google/android/gms/internal/ads/sv0$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/sv0;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sv0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/sv0;->zzdj:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sv0;->zzgnc:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static k()Lcom/google/android/gms/internal/ads/sv0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sv0$b;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/ads/sv0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/tv0;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 11
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/sv0;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/sv0;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/sv0;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/ads/sv0;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    .line 17
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

    .line 18
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzgna"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/sv0$a;->zzac()Lcom/google/android/gms/internal/ads/k91;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzgnc"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzgnd"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzgne"

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/sv0;->zzgnf:Lcom/google/android/gms/internal/ads/sv0;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u0008\u0000\u0003\u0008\u0001\u0004\u0008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/sv0$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/sv0$b;-><init>(Lcom/google/android/gms/internal/ads/rv0;)V

    return-object p1

    .line 22
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/sv0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/sv0;-><init>()V

    return-object p1

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
