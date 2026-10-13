.class public final Lcom/google/android/gms/internal/clearcut/e5$b;
.super Lcom/google/android/gms/internal/clearcut/d1;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/k2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/e5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/e5$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/d1<",
        "Lcom/google/android/gms/internal/clearcut/e5$b;",
        "Lcom/google/android/gms/internal/clearcut/e5$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/k2;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/s2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/s2<",
            "Lcom/google/android/gms/internal/clearcut/e5$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;


# instance fields
.field private zzbb:I

.field private zzbis:Ljava/lang/String;

.field private zzbit:J

.field private zzbiu:J

.field private zzya:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/e5$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/e5$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    const-class v0, Lcom/google/android/gms/internal/clearcut/e5$b;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/d1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/d1;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/d1;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbis:Ljava/lang/String;

    return-void
.end method

.method private final a(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbit:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/clearcut/e5$b;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e5$b;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/clearcut/e5$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/e5$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbis:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final b(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiu:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/clearcut/e5$b;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e5$b;->b(J)V

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/clearcut/e5$b$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    sget v1, Lcom/google/android/gms/internal/clearcut/d1$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/e5$b;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/e5$b$a;

    return-object v0
.end method

.method static synthetic p()Lcom/google/android/gms/internal/clearcut/e5$b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/clearcut/f5;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/clearcut/e5$b;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/clearcut/d1$b;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/d1$b;-><init>(Lcom/google/android/gms/internal/clearcut/d1;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

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

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzya"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbis"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbit"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbiu"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/e5$b;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0008\u0001\u0003\u0002\u0002\u0004\u0002\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/clearcut/d1;->a(Lcom/google/android/gms/internal/clearcut/i2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/clearcut/e5$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/e5$b$a;-><init>(Lcom/google/android/gms/internal/clearcut/f5;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/clearcut/e5$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/e5$b;-><init>()V

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

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzya:I

    return v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbis:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbit:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e5$b;->zzbiu:J

    return-wide v0
.end method
