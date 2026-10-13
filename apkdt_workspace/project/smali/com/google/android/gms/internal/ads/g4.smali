.class final Lcom/google/android/gms/internal/ads/g4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/le<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/i3;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/h4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/i3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g4;->d:Lcom/google/android/gms/internal/ads/h4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g4;->a:Lcom/google/android/gms/internal/ads/i3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/g4;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/g4;->c:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/p3;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g4;->d:Lcom/google/android/gms/internal/ads/h4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g4;->a:Lcom/google/android/gms/internal/ads/i3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/g4;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g4;->c:Lcom/google/android/gms/internal/ads/he;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/h4;->a(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/i3;Lcom/google/android/gms/internal/ads/p3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V

    return-void
.end method
