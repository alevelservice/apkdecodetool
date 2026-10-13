.class abstract Lcom/google/android/gms/internal/vision/n5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/vision/n5;

.field private static final b:Lcom/google/android/gms/internal/vision/n5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/p5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/p5;-><init>(Lcom/google/android/gms/internal/vision/m5;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/n5;->a:Lcom/google/android/gms/internal/vision/n5;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/o5;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/o5;-><init>(Lcom/google/android/gms/internal/vision/m5;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/n5;->b:Lcom/google/android/gms/internal/vision/n5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/m5;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/n5;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/vision/n5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/n5;->a:Lcom/google/android/gms/internal/vision/n5;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/vision/n5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/n5;->b:Lcom/google/android/gms/internal/vision/n5;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)V
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
