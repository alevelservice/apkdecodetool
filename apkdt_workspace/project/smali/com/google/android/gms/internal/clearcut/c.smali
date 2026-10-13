.class final Lcom/google/android/gms/internal/clearcut/c;
.super Landroid/database/ContentObserver;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/clearcut/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/clearcut/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/b;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/b;->a(Lcom/google/android/gms/internal/clearcut/b;)V

    return-void
.end method
