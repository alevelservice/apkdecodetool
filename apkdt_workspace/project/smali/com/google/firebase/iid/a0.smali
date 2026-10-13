.class final synthetic Lcom/google/firebase/iid/a0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Le/i/b/b/d/c;


# instance fields
.field private final a:Lcom/google/firebase/iid/d0$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/d0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/a0;->a:Lcom/google/firebase/iid/d0$a;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/b/d/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/a0;->a:Lcom/google/firebase/iid/d0$a;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/WithinAppServiceBinder;->lambda$send$0$WithinAppServiceBinder(Lcom/google/firebase/iid/d0$a;Le/i/b/b/d/h;)V

    return-void
.end method
