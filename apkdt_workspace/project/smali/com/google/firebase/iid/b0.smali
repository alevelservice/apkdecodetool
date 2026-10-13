.class final synthetic Lcom/google/firebase/iid/b0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/firebase/iid/d0$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/d0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/b0;->e:Lcom/google/firebase/iid/d0$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/b0;->e:Lcom/google/firebase/iid/d0$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/d0$a;->c()V

    return-void
.end method
