.class public final Lcom/google/android/gms/internal/clearcut/y4;
.super Lcom/google/android/gms/internal/clearcut/d1;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/k2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/y4$a;,
        Lcom/google/android/gms/internal/clearcut/y4$b;,
        Lcom/google/android/gms/internal/clearcut/y4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/d1<",
        "Lcom/google/android/gms/internal/clearcut/y4;",
        "Lcom/google/android/gms/internal/clearcut/y4$a;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/k2;"
    }
.end annotation


# static fields
.field private static final zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/s2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/s2<",
            "Lcom/google/android/gms/internal/clearcut/y4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzbfa:I

.field private zzbfb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/y4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/y4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    const-class v0, Lcom/google/android/gms/internal/clearcut/y4;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/d1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/d1;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/d1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/y4;->zzbfa:I

    return-void
.end method

.method static synthetic h()Lcom/google/android/gms/internal/clearcut/y4;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/clearcut/a5;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/y4;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/clearcut/y4;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/clearcut/y4;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/clearcut/d1$b;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/d1$b;-><init>(Lcom/google/android/gms/internal/clearcut/d1;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/y4;->zzbg:Lcom/google/android/gms/internal/clearcut/s2;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzbfa"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/y4$c;->zzd()Lcom/google/android/gms/internal/clearcut/h1;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbfb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/y4$b;->zzd()Lcom/google/android/gms/internal/clearcut/h1;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/clearcut/y4;->zzbfc:Lcom/google/android/gms/internal/clearcut/y4;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/clearcut/d1;->a(Lcom/google/android/gms/internal/clearcut/i2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/clearcut/y4$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/y4$a;-><init>(Lcom/google/android/gms/internal/clearcut/a5;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/clearcut/y4;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/y4;-><init>()V

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
