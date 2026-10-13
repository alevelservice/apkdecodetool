.class Lcom/google/android/gms/measurement/internal/e8;
.super Lcom/google/android/gms/measurement/internal/f5;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/h5;


# instance fields
.field protected final b:Lcom/google/android/gms/measurement/internal/g8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/g8;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g8;->o()Lcom/google/android/gms/measurement/internal/j4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/f5;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e8;->b:Lcom/google/android/gms/measurement/internal/g8;

    return-void
.end method


# virtual methods
.method public k()Lcom/google/android/gms/measurement/internal/n8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->b:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/gms/measurement/internal/x8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->b:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->f()Lcom/google/android/gms/measurement/internal/x8;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/android/gms/measurement/internal/e9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->b:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/gms/measurement/internal/e4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->b:Lcom/google/android/gms/measurement/internal/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v0

    return-object v0
.end method
