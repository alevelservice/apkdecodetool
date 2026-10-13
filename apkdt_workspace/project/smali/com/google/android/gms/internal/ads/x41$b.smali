.class public final Lcom/google/android/gms/internal/ads/x41$b;
.super Lcom/google/android/gms/internal/ads/e91;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/x41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/x41$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91<",
        "Lcom/google/android/gms/internal/ads/x41$b;",
        "Lcom/google/android/gms/internal/ads/x41$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/wa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wa1<",
            "Lcom/google/android/gms/internal/ads/x41$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgyc:Lcom/google/android/gms/internal/ads/x41$b;


# instance fields
.field private zzgwv:Ljava/lang/String;

.field private zzgxm:I

.field private zzgxx:I

.field private zzgxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/x41$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x41$b;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/x41$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/e91;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e91;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x41$b;->zzgwv:Ljava/lang/String;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/i51;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i51;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/x41$b;->zzgxm:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/p41;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p41;->zzab()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/x41$b;->zzgxx:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/x41$b;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/x41$b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/x41$b;Lcom/google/android/gms/internal/ads/i51;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/x41$b;->a(Lcom/google/android/gms/internal/ads/i51;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/x41$b;Lcom/google/android/gms/internal/ads/p41;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/x41$b;->a(Lcom/google/android/gms/internal/ads/p41;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/x41$b;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/x41$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x41$b;->zzgwv:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/x41$b;->zzgxy:I

    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/ads/x41$b$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91;->h()Lcom/google/android/gms/internal/ads/e91$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/x41$b$a;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/ads/x41$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/y41;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/x41$b;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/ads/x41$b;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/x41$b;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/e91$c;

    sget-object p3, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/e91$c;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    .line 14
    sput-object p1, Lcom/google/android/gms/internal/ads/x41$b;->zzdv:Lcom/google/android/gms/internal/ads/wa1;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgwv"

    aput-object v0, p1, p2

    const-string p2, "zzgxx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzgxy"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzgxm"

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/x41$b;->zzgyc:Lcom/google/android/gms/internal/ads/x41$b;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/e91;->a(Lcom/google/android/gms/internal/ads/oa1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/x41$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/x41$b$a;-><init>(Lcom/google/android/gms/internal/ads/y41;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/x41$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/x41$b;-><init>()V

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
