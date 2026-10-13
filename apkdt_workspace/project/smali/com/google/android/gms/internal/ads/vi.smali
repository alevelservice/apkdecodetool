.class final synthetic Lcom/google/android/gms/internal/ads/vi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/js1;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vi;->a:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/vi;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pt1;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vi;->a:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/vi;->b:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/si;->a(ZILcom/google/android/gms/internal/ads/pt1;)V

    return-void
.end method
