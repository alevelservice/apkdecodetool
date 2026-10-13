.class public final Lcom/google/android/gms/internal/measurement/b4$c;
.super Lcom/google/android/gms/internal/measurement/k2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/measurement/b4<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/measurement/k2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/b4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b4$c;->a:Lcom/google/android/gms/internal/measurement/b4;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/f3;Lcom/google/android/gms/internal/measurement/o3;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4$c;->a:Lcom/google/android/gms/internal/measurement/b4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/b4;->a(Lcom/google/android/gms/internal/measurement/b4;Lcom/google/android/gms/internal/measurement/f3;Lcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/b4;

    move-result-object p1

    return-object p1
.end method
