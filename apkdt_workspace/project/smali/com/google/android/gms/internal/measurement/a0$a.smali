.class public final Lcom/google/android/gms/internal/measurement/a0$a;
.super Lcom/google/android/gms/internal/measurement/b4$a;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/b4$a<",
        "Lcom/google/android/gms/internal/measurement/a0;",
        "Lcom/google/android/gms/internal/measurement/a0$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a0;->x()Lcom/google/android/gms/internal/measurement/a0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/b4$a;-><init>(Lcom/google/android/gms/internal/measurement/b4;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/a0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/b4$a;->e()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$a;->f:Lcom/google/android/gms/internal/measurement/b4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a0;->a(Lcom/google/android/gms/internal/measurement/a0;Ljava/lang/String;)V

    return-object p0
.end method
