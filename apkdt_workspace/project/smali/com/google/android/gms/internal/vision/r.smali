.class final synthetic Lcom/google/android/gms/internal/vision/r;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/p;


# instance fields
.field private final a:Lcom/google/android/gms/internal/vision/o;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/r;->a:Lcom/google/android/gms/internal/vision/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r;->a:Lcom/google/android/gms/internal/vision/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
