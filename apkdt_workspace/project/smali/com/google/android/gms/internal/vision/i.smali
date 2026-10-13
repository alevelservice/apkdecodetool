.class final synthetic Lcom/google/android/gms/internal/vision/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/p;


# instance fields
.field private final a:Lcom/google/android/gms/internal/vision/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/i;->a:Lcom/google/android/gms/internal/vision/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i;->a:Lcom/google/android/gms/internal/vision/j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/j;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
