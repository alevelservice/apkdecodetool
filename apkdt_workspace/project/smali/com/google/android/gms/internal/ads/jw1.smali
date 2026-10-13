.class public abstract Lcom/google/android/gms/internal/ads/jw1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/jw1;

.field public static final b:Lcom/google/android/gms/internal/ads/jw1;

.field public static final c:Lcom/google/android/gms/internal/ads/jw1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mw1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mw1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jw1;->a:Lcom/google/android/gms/internal/ads/jw1;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/lw1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lw1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jw1;->b:Lcom/google/android/gms/internal/ads/jw1;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ow1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ow1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jw1;->c:Lcom/google/android/gms/internal/ads/jw1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
