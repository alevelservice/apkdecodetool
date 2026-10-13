.class public abstract Lcom/google/android/gms/internal/measurement/b4$b;
.super Lcom/google/android/gms/internal/measurement/b4;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/m5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/b4$b<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/b4<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/m5;"
    }
.end annotation


# instance fields
.field protected zzaic:Lcom/google/android/gms/internal/measurement/r3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/r3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r3;->g()Lcom/google/android/gms/internal/measurement/r3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$b;->zzaic:Lcom/google/android/gms/internal/measurement/r3;

    return-void
.end method


# virtual methods
.method final n()Lcom/google/android/gms/internal/measurement/r3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/r3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$b;->zzaic:Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r3;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$b;->zzaic:Lcom/google/android/gms/internal/measurement/r3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/r3;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$b;->zzaic:Lcom/google/android/gms/internal/measurement/r3;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$b;->zzaic:Lcom/google/android/gms/internal/measurement/r3;

    return-object v0
.end method
