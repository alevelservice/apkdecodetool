.class public final Lcom/google/android/gms/internal/vision/v1;
.super Lcom/google/android/gms/internal/vision/s4;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/f6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/v1$b;,
        Lcom/google/android/gms/internal/vision/v1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/s4<",
        "Lcom/google/android/gms/internal/vision/v1;",
        "Lcom/google/android/gms/internal/vision/v1$b;",
        ">;",
        "Lcom/google/android/gms/internal/vision/f6;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/l6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/l6<",
            "Lcom/google/android/gms/internal/vision/v1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznd:Lcom/google/android/gms/internal/vision/v1;


# instance fields
.field private zzbf:I

.field private zzmv:Ljava/lang/String;

.field private zzmw:Z

.field private zzmx:I

.field private zzmy:J

.field private zzmz:J

.field private zzna:J

.field private zznb:Ljava/lang/String;

.field private zznc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/v1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/v1;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/vision/v1;->zznd:Lcom/google/android/gms/internal/vision/v1;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/vision/v1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/s4;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/s4;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/s4;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/v1;->zzmv:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/v1;->zznb:Ljava/lang/String;

    return-void
.end method

.method static synthetic m()Lcom/google/android/gms/internal/vision/v1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/v1;->zznd:Lcom/google/android/gms/internal/vision/v1;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/vision/p1;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/vision/v1;->zzbd:Lcom/google/android/gms/internal/vision/l6;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/vision/v1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/v1;->zzbd:Lcom/google/android/gms/internal/vision/l6;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/vision/s4$b;

    sget-object p3, Lcom/google/android/gms/internal/vision/v1;->zznd:Lcom/google/android/gms/internal/vision/v1;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/s4$b;-><init>(Lcom/google/android/gms/internal/vision/s4;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/vision/v1;->zzbd:Lcom/google/android/gms/internal/vision/l6;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/v1;->zznd:Lcom/google/android/gms/internal/vision/v1;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbf"

    aput-object v0, p1, p2

    const-string p2, "zzmv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzmw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzmx"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/vision/v1$a;->zzah()Lcom/google/android/gms/internal/vision/y4;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzmy"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzmz"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzna"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zznb"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zznc"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/vision/v1;->zznd:Lcom/google/android/gms/internal/vision/v1;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0007\u0001\u0003\u000c\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0008\u0006\u0008\u0007\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/s4;->a(Lcom/google/android/gms/internal/vision/d6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/v1$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/v1$b;-><init>(Lcom/google/android/gms/internal/vision/p1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/v1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/v1;-><init>()V

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
