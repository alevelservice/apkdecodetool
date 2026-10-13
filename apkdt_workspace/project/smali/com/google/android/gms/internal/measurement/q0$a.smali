.class public final Lcom/google/android/gms/internal/measurement/q0$a;
.super Lcom/google/android/gms/internal/measurement/b4$a;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4$a<",
        "Lcom/google/android/gms/internal/measurement/q0;",
        "Lcom/google/android/gms/internal/measurement/q0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q0;->p()Lcom/google/android/gms/internal/measurement/q0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/b4$a;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/r0$a;)Lcom/google/android/gms/internal/measurement/q0$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/q0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/q0;Lcom/google/android/gms/internal/measurement/r0$a;)V

    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/r0;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast p1, Lcom/google/android/gms/internal/measurement/q0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/q0;->b(I)Lcom/google/android/gms/internal/measurement/r0;

    move-result-object p1

    return-object p1
.end method
