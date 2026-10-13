.class public final Lcom/google/android/gms/internal/measurement/u0$a;
.super Lcom/google/android/gms/internal/measurement/b4$a;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4$a<",
        "Lcom/google/android/gms/internal/measurement/u0;",
        "Lcom/google/android/gms/internal/measurement/u0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u0;->w()Lcom/google/android/gms/internal/measurement/u0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/b4$a;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/u0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u0;->a(Lcom/google/android/gms/internal/measurement/u0;I)V

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/u0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/u0;->a(Lcom/google/android/gms/internal/measurement/u0;J)V

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/u0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/u0$a;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u0;->a(Lcom/google/android/gms/internal/measurement/u0;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final h()Lcom/google/android/gms/internal/measurement/u0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/u0;->a(Lcom/google/android/gms/internal/measurement/u0;)V

    return-object p0
.end method
