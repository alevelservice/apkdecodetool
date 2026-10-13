.class public Lcom/mapbox/android/telemetry/Attachment;
.super Lcom/mapbox/android/telemetry/Event;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/android/telemetry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIS_ATTACHMENT:Ljava/lang/String; = "vis.attachment"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "files"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/s;",
            ">;"
        }
    .end annotation
.end field

.field private final event:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/Attachment$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/Attachment$a;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const-string v0, "vis.attachment"

    .line 2
    iput-object v0, p0, Lcom/mapbox/android/telemetry/Attachment;->event:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/Attachment;->attachments:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/Attachment;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/mapbox/android/telemetry/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/Attachment;->attachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/Attachment;->attachments:Ljava/util/List;

    return-object v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/Event$a;->VIS_ATTACHMENT:Lcom/mapbox/android/telemetry/Event$a;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mapbox/android/telemetry/Attachment;->event:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
