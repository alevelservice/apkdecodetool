.class public final Lcom/google/android/gms/internal/vision/r1$a;
.super Lcom/google/android/gms/internal/vision/s4$a;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/f6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/s4$a<",
        "Lcom/google/android/gms/internal/vision/r1;",
        "Lcom/google/android/gms/internal/vision/r1$a;",
        ">;",
        "Lcom/google/android/gms/internal/vision/f6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/r1;->n()Lcom/google/android/gms/internal/vision/r1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/s4$a;-><init>(Lcom/google/android/gms/internal/vision/s4;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/p1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/r1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/r1$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->e()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    check-cast v0, Lcom/google/android/gms/internal/vision/r1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/r1;->a(Lcom/google/android/gms/internal/vision/r1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/r1$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/s4$a;->e()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/s4$a;->f:Lcom/google/android/gms/internal/vision/s4;

    check-cast v0, Lcom/google/android/gms/internal/vision/r1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/r1;->b(Lcom/google/android/gms/internal/vision/r1;Ljava/lang/String;)V

    return-object p0
.end method
