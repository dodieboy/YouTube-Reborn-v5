#import "YouTubeHeader/YTIElementRenderer.h"

@interface YTIItemSectionSupportedRenderers : GPBMessage
@property (nonatomic, strong, readwrite) YTIElementRenderer *elementRenderer;
@property (nonatomic, assign, readwrite) BOOL hasPromotedVideoRenderer;
@property (nonatomic, assign, readwrite) BOOL hasPromotedVideoInlineMutedRenderer;
@property (nonatomic, assign, readwrite) BOOL hasCompactPromotedVideoRenderer;
@property (nonatomic, assign, readwrite) BOOL hasMerchandiseItemRenderer;
@property (nonatomic, assign, readwrite) BOOL hasCarouselItemRenderer;
@end
