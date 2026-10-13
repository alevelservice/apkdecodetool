.class final Lcom/google/firebase/messaging/q$c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Lcom/google/firebase/m/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/e<",
        "Lcom/google/firebase/messaging/q$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/messaging/q$b;Lcom/google/firebase/m/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/q$b;->a()Lcom/google/firebase/messaging/q;

    move-result-object p1

    const-string v0, "messaging_client_event"

    .line 2
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/m/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/messaging/q$b;

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/q$c;->a(Lcom/google/firebase/messaging/q$b;Lcom/google/firebase/m/f;)V

    return-void
.end method
