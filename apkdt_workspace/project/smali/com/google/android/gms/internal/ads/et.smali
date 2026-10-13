.class public final Lcom/google/android/gms/internal/ads/et;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ws0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ws;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ws;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/et;->a:Lcom/google/android/gms/internal/ads/ws;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/et;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/et;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/et;-><init>(Lcom/google/android/gms/internal/ads/ws;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/ws0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ws;->b()Lcom/google/android/gms/internal/ads/ws0;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/ws0;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/et;->a:Lcom/google/android/gms/internal/ads/ws;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/et;->b(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/ws0;

    move-result-object v0

    return-object v0
.end method
